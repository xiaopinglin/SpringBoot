package com.cnzx.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UploadController {

    @RequestMapping("/fileUpload")
    public Map<String, Object> uploadFile(MultipartFile file) throws Exception {
        System.out.println(file.getOriginalFilename());
        file.transferTo(new File("D:/" + file.getOriginalFilename()));

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("msg", "上传成功！");
        return map;
    }

}
