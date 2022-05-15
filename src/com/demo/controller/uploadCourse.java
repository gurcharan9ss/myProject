package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.demo.connection.getConn;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadCourse")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class uploadCourse extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

      
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String duration = request.getParameter("duration");
        String price = request.getParameter("price");
        String teacher = request.getParameter("teacher");
        String jlink = request.getParameter("jlink");
        String time = request.getParameter("time");

        
        Part part = request.getPart("ufile");//
        String fileName = extractFileName(part);//file name

        
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator );
        
        /*
         You need this loop if you submitted more than one file
         for (Part part : request.getParts()) {
         String fileName = extractFileName(part);
         part.write(savePath + File.separator + fileName);
         }*/
        try {
        	getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("insert into courses(title,content,duration,logo,savePath,price,teacher,jlink,time) values(?,?,?,?,?,?,?,?,?)");
            gc.ps.setString(1, title);
            gc.ps.setString(2, content);
            gc.ps.setString(3, duration);
            gc.ps.setString(4, dbFileName);
            gc.ps.setString(5, savePath);
            gc.ps.setString(6, price);
            gc.ps.setString(7, teacher);
            gc.ps.setString(8, jlink);
            gc.ps.setString(9, time);
            gc.ps.executeUpdate();
            response.sendRedirect("aDashboard.jsp");
            
        } catch (Exception e) {
            out.println(e);
        }

    }
    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
