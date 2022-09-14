package com.costin.companyproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/leaders")
    public String showLeadershipRetreatPage() {

        return "leaders-page";
    }

    @GetMapping("/systems")
    public String showAdminHolidayCruise() {

        return "admins-page";
    }

}
