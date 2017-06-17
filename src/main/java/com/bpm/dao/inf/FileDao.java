package com.bpm.dao.inf;

import java.util.List;
import java.util.Map;

public interface FileDao {

	/**
	 * This method persist the uploaded file into database.
	 * @param filePath
	 * @param fileName
	 * @return String response
	 */
	public String saveFileToDatabase(String filePath, String fileName);

	/**
	 * This service updates the currency information
	 */
	public void updateCurrencyData();

	public List getFileDetails(String searchString);

	int processCsvTempData(String fileName);
}