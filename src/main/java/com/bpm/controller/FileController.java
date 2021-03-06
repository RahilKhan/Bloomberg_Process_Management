package com.bpm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
//import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bpm.model.DashboardDetails;
import com.bpm.model.FileInfo;
import com.bpm.service.FileServiceInf;
import com.google.gson.Gson;

//@Controller
@RestController
@RequestMapping("/fileUpload")
@PropertySource("classpath:application.properties")
public class FileController {
	private static Logger log = Logger.getLogger(FileController.class.getName()); 

	@Autowired
	ServletContext context;

	@Autowired
	FileServiceInf fileService; 

	@Autowired
	private Environment environment;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ModelAndView upload(@RequestParam("file") List < MultipartFile > files) {
		System.out.println("\t FileController.java : upload");
		String filePath="";
		String fileName ="";
		String response ="";

		List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
		if (!files.isEmpty()) {
			try {
				for (MultipartFile file: files) {

					/*check if file was previously loaded*/
					@SuppressWarnings("rawtypes")
					List searchResultList = fileService.getFileDetails(file.getOriginalFilename());
					System.out.println("\t searchResultList : " + searchResultList.size());

					if(searchResultList.size() == 0 ){

						String path = environment.getRequiredProperty("upload.file.path") + File.separator + file.getOriginalFilename();
						filePath = path;
						fileName = file.getOriginalFilename();
						File destinationFile = new File(path);
						file.transferTo(destinationFile);
						uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
						log.info("\t path : "+ path );
						System.out.println("\t (sop)path : "+ path );

						response = saveFileToDatabase(filePath,fileName);
					}
				}
			} catch (Exception e) {
				log.info(e.getMessage());
			}

		}
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("hello");
//        modelAndView.addObject("files", uploadedFiles);


		log.info("\t response : " + response);
		return new ModelAndView("redirect:index.jsp");
	}

	
	@RequestMapping(value = "/indexPage", method = RequestMethod.GET)
	public String finalPage() {
		return "index";
	}


	/**
	 * This service returns Dashboard details
	 * @return String
	 */
	@RequestMapping(value = "/uploadFiles", method = RequestMethod.POST)
	public @ResponseBody
	String uploadFileToDatabase(@RequestParam("file") List < MultipartFile > files) {
		log.info("FileUploadController : uploadFileToDatabase");
		System.out.println("FileUploadController : uploadFileToDatabase");

		List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
		String filePath="";
		String fileName ="";
		String response ="";

		if (!files.isEmpty()) {
			try {
				for (MultipartFile file: files) {
					String path = context.getRealPath("/importedCsv") + File.separator + file.getOriginalFilename();
					filePath = path;
					fileName = file.getOriginalFilename();

					File destinationFile = new File(path);
					file.transferTo(destinationFile);
					uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
				}

			} catch (Exception e) {
				log.info(e.getMessage());
			}

		}
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		System.out.println("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		response = saveFileToDatabase(filePath,fileName);
		//    	response = "success";

		return response;
	}

	/**
	 * This service returns Dashboard details
	 * @return String
	 */
	@RequestMapping(value = "/uploadFileService", method = RequestMethod.POST)
	public @ResponseBody
	String uploadFilesService(@RequestParam("file") List < MultipartFile > files) {
		log.info("FileUploadController : uploadFileService");

		List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
		String filePath="";
		String fileName="";
		String response ="";

		if (!files.isEmpty()) {
			try {
				for (MultipartFile file: files) {
					String path = context.getRealPath("/WEB-INF/uploaded") + File.separator + file.getOriginalFilename();
					filePath = path;
					fileName = file.getOriginalFilename();
					File destinationFile = new File(path);
					file.transferTo(destinationFile);
					uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
				}

			} catch (Exception e) {
				log.info(e.getMessage());
			}

		}
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		response = saveFileToDatabase(filePath,fileName);
		//    	response = "success";

		return response;
	}

	/**
	 * This service persist the csv data into the database
	 * @param filePath
	 * @param fileName
	 * @return response
	 */
	public String saveFileToDatabase(String filePath,String fileName){
		log.info("\t filePath : " + filePath + "\n\t fileName : " + fileName);
		System.out.println("FileuploadController : saveFileToDatabase \n\t filePath : " + filePath + "\n\t fileName : " + fileName);
		String response = fileService.saveFileToDatabase( filePath, fileName);

		return response;
	}



	/**
	 * This service returns File details based on search text provided
	 * @return String
	 */
	@RequestMapping(value = "/getFileDetails", method = RequestMethod.GET)
	public @ResponseBody
	String getFileDetails(HttpServletRequest request) {
		System.out.println("Dashboardcontroller : getFileDetails");
		String response = null;

		String searchString = request.getParameter("searchText");

		List searchResultList = fileService.getFileDetails(searchString);
		response = new Gson().toJson(fileService.getFileDetails(searchString));
		System.out.println("\t searchResultList : " + searchResultList.toString() 
		+ "\n\t response : " + response);


		return response;
	}

}

