package com.cnzx.controller;

import com.cnzx.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {

    @RequestMapping(value = "list")
    public ModelAndView showUser() {
        ModelAndView model = new ModelAndView();

        List<User> list = new ArrayList<User>();
        list.add(new User(1, "张三", 20));
        list.add(new User(2, "李四", 22));
        list.add(new User(3, "王五", 24));

        model.addObject("list", list);
        model.setViewName("userList");

        return model;
    }
}
