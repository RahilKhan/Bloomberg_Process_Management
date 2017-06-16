package com.bpm.service;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.controller.FileController;
import com.bpm.dao.inf.FileDao;

@Service("fileUploadService")
@Transactional
public class FileServiceImpl implements FileServiceInf{
	private static Logger log = Logger.getLogger(FileServiceImpl.class.getName()); 
	
	@Autowired
	FileDao fileDao;
	
	@Override
	public String saveFileToDatabase(String filePath, String fileName) {
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		System.out.println("FileUploadServiceImpl : saveFileToDatabase \n\t filePath : " + filePath + "\n\t fileName : " + fileName);
		String response = fileDao.saveFileToDatabase(filePath, fileName);
		return response;
	}

	@Override
	public List getFileDetails(String searchString) {
		List response = null;
		
		response = fileDao.getFileDetails(searchString);
		
		return response;
	}
	
}
