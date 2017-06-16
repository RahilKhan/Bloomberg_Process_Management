package com.bpm.dao.inf;

public interface FileUploadDao {

	/**
	 * This method persist the uploaded file into database.
	 * @param filePath
	 * @param fileName
	 * @return String response
	 */
	public String saveFileToDatabase(String filePath, String fileName);

	/*
	 * This service updates the currency information
	 */
	public void updateCurrencyData();
}