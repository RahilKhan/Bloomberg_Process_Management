package com.bpm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bpm.model.FileInfo;


@Controller
//@RestController
@RequestMapping("/fileUpload")
public class FileuploadController {
    @Autowired
    ServletContext context;
 
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public void upload(@RequestParam("file") List < MultipartFile > files) {
        List < FileInfo > uploadedFiles = new ArrayList < FileInfo > ();
        if (!files.isEmpty()) {
            try {
                for (MultipartFile file: files) {
                    String path = context.getRealPath("/WEB-INF/uploaded") + File.separator +
                        file.getOriginalFilename();
                    File destinationFile = new File(path);
                    file.transferTo(destinationFile);
                    uploadedFiles.add(new FileInfo(destinationFile.getName(), path));
                    System.out.println("\t path : "+ path );
                }
 
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
 
        }
        ModelAndView modelAndView = new ModelAndView("success");
        modelAndView.addObject("files", uploadedFiles);
        
        System.out.println("\n\t modelAndView : " + modelAndView.toString());
        
//        return modelAndView;
    }
}

