package myApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class MenuController {

    @GetMapping("/")
    public String home(){
        return "index";
    }
}
