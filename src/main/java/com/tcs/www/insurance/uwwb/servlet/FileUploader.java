package com.tcs.www.insurance.uwwb.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FileUploader extends HttpServlet {

    public static final String RESULT_PAGE = "/jsp/result.jsp";
    public static final String ERROR_PAGE = "/jsp/error.jsp";
    private static final Logger LOG = LoggerFactory.getLogger(FileUploader.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> fileNames = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                parseAndCheckFiles(fileNames);
                
                request.getRequestDispatcher(RESULT_PAGE).forward(request, response);
            } catch (FileUploadException e) {
                LOG.error("Error Occurred : {}", e.getMessage());
                request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
            }
        }
        else {
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    private void parseAndCheckFiles(List<FileItem> files) {
        FileItem file1 = files.get(0);
        FileItem file2 = files.get(1);

        System.out.println(file1.getName());
        System.out.println(file2.getName());

        /**
         * INSERT YOUR CODE HERE !!!
         */
    }
}
