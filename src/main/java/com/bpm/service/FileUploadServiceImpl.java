package com.bpm.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.controller.FileuploadController;
import com.bpm.dao.inf.FileUploadDao;

@Service("fileUploadService")
@Transactional
public class FileUploadServiceImpl implements FileUploadServiceInf{
	private static Logger log = Logger.getLogger(FileUploadServiceImpl.class.getName()); 
	
	@Autowired
	FileUploadDao fileUploadDao;
	
	@Override
	public String saveFileToDatabase(String filePath, String fileName) {
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		System.out.println("FileUploadServiceImpl : saveFileToDatabase \n\t filePath : " + filePath + "\n\t fileName : " + fileName);
		String response = fileUploadDao.saveFileToDatabase(filePath, fileName);
		return response;
	}
	
}
