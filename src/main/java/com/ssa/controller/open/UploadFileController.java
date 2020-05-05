package com.ssa.controller.open;


import com.baomidou.mybatisplus.extension.api.R;
import com.ssa.model.Result;
import com.ssa.pojo.FileResponse;
import com.ssa.utils.ImgBase64Decoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

@Controller
public class UploadFileController {
    /**
     * 富文本编辑器图片上传
     * @param file
     * @return
     */
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public void uploadImage( MultipartFile file,
                            HttpServletRequest request, HttpServletResponse response){

        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }

        PrintWriter out=null;
        // CKEditor提交的很重要的一个参数 ,回调函数的序号
        String callback = request.getParameter("CKEditorFuncNum");


        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "D://upload//"; // 上传后的路径
        fileName = UUID.randomUUID() + suffixName; // 新文件名

        FileResponse fileResponse = new FileResponse();
        File dest = new File(filePath + fileName);

        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
            out = response.getWriter();
            String filename = "/file/" + fileName;
            String s = fileResponse.success(1, fileName,  filename, null);
            // 返回"图像"选项卡并显示图片  request.getContextPath()为web项目名
            out.println(s);
        } catch (IOException e) {
            String s = fileResponse.error(0, "上传失败！");
            // 返回"图像"选项卡并显示图片  request.getContextPath()为web项目名
            out.println(s);
        }
    }

    @PostMapping("/uploadPhoto")
    @ResponseBody
    public Object upload(String imgBase64,HttpServletRequest request, HttpServletResponse response) {
        Result<String> result = new Result<>();
        String src=null;
        Map<String, Object> map = new HashMap<>();

        try {
            src=ImgBase64Decoder.photo(imgBase64);

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(src);
        map.put("src", src);
        map.put("code", 200);
        map.put("status", "OK");

        return map;
    }
}
