    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Spring 4 MVC - File Upload Example</title>
            <link href="../resources/css/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1>Spring 4 MVC - File Upload Example</h1>
                        <form method="post" action='fileUpload/upload' enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="file1">File Input 1</label>
                                <input type="file" name="file" id="file1">
                            </div>
                            <div class="form-group">
                                <label for="file2">File Input 2</label>
                                <input type="file" name="file" id="file2">
                            </div>
                            <button type="submit" class="btn btn-success start">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>
    </html>