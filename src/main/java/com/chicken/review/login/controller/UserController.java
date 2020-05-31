package com.chicken.review.login.controller;

import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;






@Controller
public class UserController {
	
	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	
   

    @RequestMapping(value="/login")
    public String login(Model model, String error, String logout) {
    	
    	ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
    	HttpServletRequest request = attr.getRequest();
    	HttpServletResponse response = attr.getResponse();

    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    	
    	
    	if(authentication != null) {
    		
	    	if(!authentication.getPrincipal().equals("anonymousUser"))
	    		return "redirect:/";
    	}
    	
    	

        return "login/login";
    }

    
   
}
