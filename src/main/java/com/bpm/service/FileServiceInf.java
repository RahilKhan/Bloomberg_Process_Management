package com.bpm.service;

import java.util.List;
import java.util.Map;

public interface FileServiceInf {

	/**
	 * This service persists the uploaded file to the database
	 * @param filePath
	 * @param fileName
	 * @return
	 */
	public String saveFileToDatabase(String filePath,String fileName);

	public List getFileDetails(String searchString);
	
}
