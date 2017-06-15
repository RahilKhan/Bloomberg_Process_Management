package com.bpm.dao.impl;

import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.controller.FileuploadController;
import com.bpm.dao.inf.AbstractDao;
import com.bpm.dao.inf.FileUploadDao;
import com.bpm.model.Currency;
import com.bpm.model.FileInfo;
 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
@Repository("fileUploadDao")
@Transactional
public class FileUploadDaoImpl extends AbstractDao<Integer, FileInfo> implements FileUploadDao {
	private static Logger log = Logger.getLogger(FileUploadDaoImpl.class.getName()); 
	
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
		String response = "uploading csv to mysql - demo";

		Session session = getEntityManager().unwrap(Session.class);
		String sql = "select * from curr_iso_map";
		List result = session.createSQLQuery(sql).list();
		
		log.info("\t query result : " + result.toString());
		System.out.println("\t query result : " + result.toString());
		
		int booleanResult = session.createSQLQuery(" LOAD DATA LOCAL INFILE :file ignore INTO TABLE DEALS_CSV_IMPORT_TEMP CHARACTER SET latin1 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;")
				.setString("file", filePath) 
				.executeUpdate();	
		
		/*
		 * Call procedure to process records
		 */
//		processImportedCsvRecords(fileName)
		int booleanCsvProcessResult = session.createSQLQuery("CALL processImportedCsvRecords(:file)")
				.setParameter("file", fileName) 
				.executeUpdate();
		log.info("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		System.out.println("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		
		
//		Query query = session.createSQLQuery(
//				"CALL GetStocks(:stockCode)")
//				.addEntity(Stock.class)
//				.setParameter("stockCode", "7277");
//			List result = query.list();
		
		return response;
	}
	
}
