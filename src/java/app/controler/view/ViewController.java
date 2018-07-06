/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controler.view;

import app.model.User;
import app.spring.service.UsersServiceImpl;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author isai.castro
 */
@Controller
public class ViewController {

    @Autowired
    private UsersServiceImpl userDao;

    private String msg = null;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Map<String, Object> map) {
        return "redirect:/login";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(Map<String, Object> map) {
        return "home";
    }

    @RequestMapping(value = "/personchild", method = RequestMethod.GET)
    public String register(Map<String, Object> map) {
        return "personchild";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Map<String, Object> map) {
        return "redirect:/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("mssg", msg);
        msg = null;
        return "login";
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listJobs(Map<String, Object> map) {
        List<User> listUsers = userDao.getAll();
        map.put("userList", listUsers);
        return "users";
    }

    @RequestMapping(value = "/validate", method = RequestMethod.POST)
    public String isValidUser(@ModelAttribute User user, ModelMap model) {
        boolean isValid = userDao.findUser(user.getEmail(), user.getPassword());
        msg = (isValid ? "Bienvenido.." : "Acceso denegado");
        return (isValid ? "redirect:/home" : "redirect:/login");
    }

}
