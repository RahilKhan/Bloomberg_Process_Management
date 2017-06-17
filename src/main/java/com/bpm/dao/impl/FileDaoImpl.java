package com.bpm.dao.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.controller.FileController;
import com.bpm.dao.inf.AbstractDao;
import com.bpm.dao.inf.FileDao;
import com.bpm.model.Currency;
import com.bpm.model.FileInfo;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@Repository("fileUploadDao")
@Transactional
public class FileDaoImpl extends AbstractDao<Integer, FileInfo> implements FileDao {
	private static Logger log = Logger.getLogger(FileDaoImpl.class.getName()); 

	/** Alternative to Hibernate.initialize() */
	protected void initializeCollection(Collection<?> collection) {
		if(collection == null) {
			return;
		}
		collection.iterator().hasNext();
	}

	@Override
	public String saveFileToDatabase(String filePath, String fileName) {
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
				System.out.println("FileuploadController : saveFileToDatabase \n\t filePath : " + filePath + "\n\t fileName : " + fileName);
		String response = "failure";

		Session session = getEntityManager().unwrap(Session.class);

		String csvLoadSql = " LOAD DATA LOCAL INFILE :filePath " 
				+ " ignore INTO TABLE DEALS_CSV_IMPORT_TEMP CHARACTER SET utf8 FIELDS TERMINATED BY ',' "  
				+ " LINES TERMINATED BY '\\n' " 
				+ " IGNORE 1 LINES " 
				+ " (DEAL_UNIQUE_ID,ORDER_CURR_ISO,RECIPIENT_CURR_ISO,@DEALTIMESTAMP,DEAL_AMT_IN_ORDER_CURR_ISO,@FILE_NAME) "
				+ " SET DEAL_TIMESTAMP = STR_TO_DATE(@DEALTIMESTAMP, '%m/%d/%Y'), "
				+ " FILE_NAME =:fileName ; ";
		
		System.out.println("\t csvLoadSql : " + csvLoadSql);
		int recUploadCount = session.createSQLQuery(csvLoadSql)
				.setString("filePath", filePath)
				.setString("fileName", fileName)
				.executeUpdate();	
		System.out.println("\t recUploadCount : " + recUploadCount);

		/* procedure call to process csv data into accepted and rejected records in database */
		int booleanCsvProcessResult = session.createSQLQuery("CALL processImportedCsvRecords(:file)")
				.setParameter("file", fileName) 
				.executeUpdate();
		log.info("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		System.out.println("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		if(recUploadCount > 0)
			response = "success";

//		updateCurrencyData();
        		
        return response;
	}

	/**
	 * This method process the records saved in temp table and stores them in 
	 * accepted and rejected records table
	 * @param fileName
	 * @return
	 */
	@Override
	public int processCsvTempData(String fileName){
		Session session = getEntityManager().unwrap(Session.class);
		
		/* procedure call to process csv data into accepted and rejected records in database */
		int booleanCsvProcessResult = session.createSQLQuery("CALL processImportedCsvRecords(:file)")
				.setParameter("file", fileName) 
				.executeUpdate();
		log.info("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		System.out.println("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		
		return booleanCsvProcessResult;
	}
	
	@Override
	public void updateCurrencyData() {
		log.info("FileUploadDaoImpl.java : updateCurrencyData() ");

		List<Currency> currencyList = new ArrayList<>();
		Currency currency = null;
		Session session = getEntityManager().unwrap(Session.class);

		String getDealsPerCurrencySql = " select dcia.order_curr_iso as CURRENCY_ISO_CODE, "
				+ " count(dcia.order_curr_iso) as DEALS_COUNT "
				+ " from bpm.deals_csv_import_accepted dcia " 
				+ " group by dcia.ORDER_CURR_ISO; ";
		List<List<Object>> currencyResultList = session.createSQLQuery(getDealsPerCurrencySql).setResultTransformer(Transformers.TO_LIST).list();

		for (List<Object> object : currencyResultList) {
			currency = new Currency();
			currency.setCurrencyIsoCode((String)object.get(0));
			currency.setAcceptedDealsCount((BigInteger)object.get(1));
			session.saveOrUpdate(currency);
			currencyList.add(currency);
		}

		System.out.println("\t currencyList.size() : " + currencyList.size());

	}

	@Override
	public List getFileDetails(String searchString) {
		System.out.println("FileDaoImpl : getFileDetails \n\t searchString : " + searchString);

		Map<String,String> fileSearchResultMap = new HashMap();
		List<Map<String,String>> fileSearchResultList = new ArrayList<>();

		@SuppressWarnings("unchecked")
		List<Object[]> fileSearchResult = getEntityManager()
		.createQuery("SELECT dad.fileName,count(dad.fileName) FROM DealsAcceptedDetails dad where dad.fileName like :searchString")
		.setParameter("searchString", "%" + searchString + "%")
		.getResultList();

//		System.out.println("\n\t fileSearchResult.size() : " + fileSearchResult.size());

		try{
			for (Object[] object : fileSearchResult) {
				String fileName  = object[0].toString();
				String dealCount = object[1].toString();
				fileSearchResultMap.put("fileName",fileName);
				fileSearchResultMap.put("dealCount",dealCount);
			}
			fileSearchResultList.add(fileSearchResultMap);
		}
		catch(Exception e){
			System.out.println("No Record found");
		}

		/*
		System.out.println("\t fileSearchResultMap.size() : " + fileSearchResultMap.size() 
		+ "\n\t fileSearchResultMap : " + fileSearchResultMap.toString()
		+ "\n\t fileSearchResultList.size() : " + fileSearchResultList.size());
		 */
		return fileSearchResultList;
	}


}
