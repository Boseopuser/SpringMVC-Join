### Hi there 👋 </br>I hope to new developer Backend-Engineer

## 💻 Stack 
<img alt="Html" src ="https://img.shields.io/badge/HTML5-E34F26.svg?&style=for-the-badge&logo=HTML5&logoColor=white"/> <img alt="Css" src ="https://img.shields.io/badge/CSS3-1572B6.svg?&style=for-the-badge&logo=CSS3&logoColor=white"/> <img alt="JavaScript" src ="https://img.shields.io/badge/JavaScriipt-F7DF1E.svg?&style=for-the-badge&logo=JavaScript&logoColor=black"/>  <img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img alt="Spring" src ="https://img.shields.io/badge/Spring-6DB33F.svg?&style=for-the-badge&logo=Spring Boot&logoColor=white"/> <img alt="Bootstrap" src ="https://img.shields.io/badge/Bootstrap-7952B3.svg?&style=for-the-badge&logo=Bootstrap&logoColor=white"/> 
## 
<a href = "https://github.com/Hun-Se"><img alt="Windows" src ="https://img.shields.io/badge/Windows-0078D6.svg?&style=for-the-badge&logo=Windows&logoColor=white"/>
<a href = "https://github.com/Hun-Se"><img alt="GitHub" src ="https://img.shields.io/badge/GitHub-181717.svg?&style=for-the-badge&logo=GitHub&logoColor=white"/>
<a href = "https://github.com/Hun-Se"><img alt="Apache" src ="https://img.shields.io/badge/Apache-D22128.svg?&style=for-the-badge&logo=Apache&logoColor=white"/>
<a href = "https://github.com/Hun-Se"><img alt="Visual Studio Code" src ="https://img.shields.io/badge/Visual Studio Code-007ACC.svg?&style=for-the-badge&logo=Visual Studio Code&logoColor=white"/> <a href = "https://github.com/Hun-Se"><img alt="MySQL" src ="https://img.shields.io/badge/MySQL-1572B6.svg?&style=for-the-badge&logo=MySQL&logoColor=white"/> <a href = "https://github.com/Hun-Se"><img alt="Eclipse IDE" src ="https://img.shields.io/badge/Eclipse IDE-2C2255.svg?&style=for-the-badge&logo=Eclipse IDE&logoColor=white"/> <a href = "https://github.com/Hun-Se">

# Spring MVC Old-Version 게시판 & 댓글 CRUD 

- # 개발환경 
- Microsoft Windows 10 v22H2
- Spring Framework 
- Springframework.Security
- Eclipse Java v2021-12
- mybatis v3.2.2
- MySQL v8.0.32

- # Tool
- Eclipse Web Developer Tools 3.24
- Spring Tools 3 (Standalone Edition) 3.9.14.RELEASE
- Spring Tools 3 Add-On for Spring Tools 4 (3.9.22.RELEASE)

  
# 회원가입 구현 


https://user-images.githubusercontent.com/128597230/235418206-23a896ee-08f1-4a61-91a6-3f4bf3e308b7.mp4


  
# MySQL 
  
  ![image](https://user-images.githubusercontent.com/128597230/235418065-1992fabc-58f2-40ab-b90e-2418120b818b.png)


# 다른 패턴의 코드구성 회원가입 구현
  ```jsx
package org.zerock.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.myapp.domain.UsersDTO;
import org.zerock.myapp.service.LoginService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequiredArgsConstructor
public class LoginController {
	
	private final LoginService service;
	
	@GetMapping("/login")
	public String login() {
		return "loginpage"; // 로그인 폼 페이지로 이동
	} // login
	
	@PostMapping("/login")
	public String login(@RequestParam("ID") String id,
						@RequestParam("password") String password,
						HttpServletRequest request,
						Model model) {
		log.trace("login({},{}) invoked.", id, password);
		
		UsersDTO dto = new UsersDTO();
		dto.setID(id);
		dto.setPassword(password);
		
		UsersDTO login = service.login(dto); // 로그인 서비스 실행
		
		if(login == null) {
			model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		return "loginpage"; // 로그인 실패시 로그인 폼 페이지로 이동
		} // if
		
		// 로그인 성공시, 세션에 로그인 정보를 저장
		HttpSession session = request.getSession();
		session.setAttribute("login", login);
		
		return "mainpage"; // 메인 페이지로 이동
	} // login
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		log.info("logout()...");
		
		// 세션에서 로그인 정보를 삭제
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "mainpage"; // 메인 페이지로 이동
	} // logout
	
	
	
} // end class
```
