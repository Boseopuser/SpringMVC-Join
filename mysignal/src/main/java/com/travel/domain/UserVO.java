package com.travel.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;



@Data
public class UserVO {
   private Integer userno;
   private String id;
   private String nickname;
   private String name;
   private String password;
   private String gender;
   private String email;
   private String phoneNumber;
   
   @DateTimeFormat(pattern="yyyy-MM-dd")
   private Date birthdate;
   
   private Float rating;
   private Date userRegiDate;
   private Date withdrawal;
   private String mbti;
   private String likearea;
	
   
   
} // end class
	
