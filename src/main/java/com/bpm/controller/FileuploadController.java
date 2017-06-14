package com.bpm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bpm.model.FileInfo;
import com.bpm.service.FileUploadServiceInf;

//@Controller
@RestController
@RequestMapping("/fileUpload")
public class FileuploadController {
	private static Logger log = Logger.getLogger(FileuploadController.class.getName()); 
	
    @Autowired
    ServletContext context;
 
	@Autowired
	FileUploadServiceInf fileUploadService; 
    
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public ModelAndView upload(@RequestParam("file") List < MultipartFile > files) {
        
		String filePath="";
		String fileName ="";
		String response ="";
		
    	List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
        if (!files.isEmpty()) {
            try {
                for (MultipartFile file: files) {
//                    String path = context.getRealPath("/WEB-INF/uploaded") + File.separator + file.getOriginalFilename();
                    String path = "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads" + File.separator + file.getOriginalFilename();
//                    String path = "C:\\Users\\rahikhan\\Downloads\\testUpload" + File.separator + file.getOriginalFilename();
                    
                    filePath = path;
                    fileName = file.getOriginalFilename();
                    File destinationFile = new File(path);
                    file.transferTo(destinationFile);
                    uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
                    log.info("\t path : "+ path );
                    System.out.println("\t (sop)path : "+ path );
                }
 
            } catch (Exception e) {
                log.info(e.getMessage());
            }
 
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("files", uploadedFiles);
        
        response = saveFileToDatabase(filePath,fileName);
        log.info("\t response : " + response + "\n\t modelAndView : " + modelAndView.toString());
        System.out.println("\n\t modelAndView : " + modelAndView.toString());
        
        
        return modelAndView;
    }
    
    
	/**
	 * This service returns Dashboard details
	 * @return String
	 */
	@RequestMapping(value = "/uploadFiles", method = RequestMethod.POST)
	public @ResponseBody
	String uploadFileToDatabase(@RequestParam("file") List < MultipartFile > files) {
		log.info("FileUploadController : uploadFileToDatabase");

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
		String response = fileUploadService.saveFileToDatabase( filePath, fileName);
		
		return response;
	}
	
}

