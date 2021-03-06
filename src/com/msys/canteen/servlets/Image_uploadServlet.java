package com.msys.canteen.servlets;


import com.alibaba.fastjson.JSON;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@WebServlet(name="image_upload",urlPatterns = {"/canting/servlet/image/upload"})
public class Image_uploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiskFileItemFactory fu = new DiskFileItemFactory();
        fu.setSizeThreshold(2 * 1024 * 1024);
        fu.setSizeThreshold(4096);
        ServletFileUpload upload = new ServletFileUpload(fu);
        upload.setHeaderEncoding("UTF-8");
        List<FileItem> fileItems = null;
        Map<String, String> result = new HashMap<>();
        try {
            fileItems = upload.parseRequest(request);
            Iterator<FileItem> iter = fileItems.iterator();
            while (iter.hasNext()) {
                FileItem item = iter.next();
                item.getString("UTF-8");
                //忽略其他不是文件域的所有表单信息
                if (!item.isFormField()) {
                    String name1 = item.getName();//获取上传的文件名
                    long size = item.getSize();//获取上传的文件大小(字节为单位)
                    if ((name1 == null || name1.equals("")) && size == 0) {
                        continue;//跳到while检查条件
                    }
                    int end = name1.length();
                    int begin = name1.lastIndexOf("\\");
                    String newname = name1.substring(begin + 1, end);
                    if (newname.length() == 0) {
                        System.out.println("上传文件导入异常，请重新上传...");
                    } else {
                        try {
                            String rootDir = request.getRealPath("/");
                            String relatDir = File.separator + "upload" ;

                            //文件夹不存在则创建
                            File fdir = new File(rootDir + relatDir);
                            if (!fdir.exists()) {
                                fdir.mkdirs();
                            }

                            String oriName = name1;
                            String newName = System.currentTimeMillis() + "_" + oriName;
                            File tempFile = new File(fdir.getPath() + File.separator + newName);


                            result.put("oriName", oriName);
                            result.put("realName", tempFile.getName());
                            result.put("relatPath", relatDir + File.separator + newName);
                            //保存文件
//                            File savedFile = new File("/upload", name1);//用原文件名，作为上传文件的文件名。“/upload”为目标路径
//                            item.write(savedFile);
                            item.write(tempFile);
                            item.delete();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        response.getWriter().println(JSON.toJSONString(result));
        response.getWriter().flush();
        response.getWriter().close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}