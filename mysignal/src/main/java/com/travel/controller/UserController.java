package com.travel.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.domain.UserVO;
import com.travel.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
private static final Logger Logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;
	
	// 회원 가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		Logger.info("get register");
	}
	
	// 회원 가입 Post 
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(UserVO vo, @DateTimeFormat(pattern="yyyy-MM-dd") Date birthdate) throws Exception {
		Logger.info("post register");
		System.out.println(vo);
		
		System.out.println(">>>>>>>>>>>>>> birthDate: " + birthdate);
		
		service.register(vo);
		
		return "redirect:/";
	}
	
	// 로그인
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest req) throws Exception {
	    Logger.info("post login");

	    HttpSession session = req.getSession();

	    UserVO login = service.login(vo);

	    if(login == null) {
	        session.setAttribute("user",null);
	    } else {
	        session.setAttribute("user",login);
	    }
	    return "redirect:/";
	}
	
	// 로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) throws Exception {
       Logger.info("get logout");
       
       session.invalidate();
         
       return "redirect:/";
    }

}
