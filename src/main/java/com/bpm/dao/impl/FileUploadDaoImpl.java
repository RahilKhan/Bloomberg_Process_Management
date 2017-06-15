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
		
//		String csvLoadSql = " LOAD DATA LOCAL INFILE :file ignore INTO TABLE DEALS_CSV_IMPORT_TEMP CHARACTER SET latin1 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;";
		String csvLoadSql = " LOAD DATA LOCAL INFILE :file " 
                          + " ignore INTO TABLE DEALS_CSV_IMPORT_TEMP CHARACTER SET utf8 FIELDS TERMINATED BY ',' "  
                          + " LINES TERMINATED BY '\n' " 
                          + " IGNORE 1 LINES " 
                          + " (DEAL_UNIQUE_ID,ORDER_CURR_ISO,RECIPIENT_CURR_ISO,@DEALTIMESTAMP,DEAL_AMT_IN_ORDER_CURR_ISO) "
                          + " SET DEAL_TIMESTAMP = STR_TO_DATE(@DEALTIMESTAMP, '%m%d%Y'); ";
		int booleanResult = session.createSQLQuery(csvLoadSql)
				.setString("file", filePath) 
				.executeUpdate();	
		
		/* procdure call to save csv data into database */
		int booleanCsvProcessResult = session.createSQLQuery("CALL processImportedCsvRecords(:file)")
				.setParameter("file", fileName) 
				.executeUpdate();
		log.info("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		System.out.println("\t Load DATA booleanResult : " + booleanCsvProcessResult);
		
		return response;
	}
	
}
