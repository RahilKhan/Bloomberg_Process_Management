package com.bpm.service;

import java.util.List;

public interface FileUploadServiceInf {

	/**
	 * This service persists the uploaded file to the database
	 * @param filePath
	 * @param fileName
	 * @return
	 */
	public String saveFileToDatabase(String filePath,String fileName);
	
}
