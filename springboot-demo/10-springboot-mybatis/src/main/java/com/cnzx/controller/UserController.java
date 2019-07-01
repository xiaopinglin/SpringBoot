package com.cnzx.controller;

import com.cnzx.entity.User;
import com.cnzx.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/findUserAll")
    public String findUserAll(Model model) {
        List<User> list = this.userService.findUserAll();
        model.addAttribute("list", list);
        return "user/showUser";
    }
    @RequestMapping("/findUserById")
    public String findUserById(Integer id, Model model) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "user/updateUser";
    }
    @RequestMapping("/addUser")
    public String addUser(User users) {
        this.userService.addUser(users);
        return "ok";
    }
    @RequestMapping("/editUser")
    public String editUser(User users) {
        this.userService.updateUser(users);
        return "ok";
    }
    @RequestMapping("/delUser")
    public String delUser(Integer id) {
        this.userService.deleteUserById(id);
        return "redirect:/findUserAll";
    }
}
