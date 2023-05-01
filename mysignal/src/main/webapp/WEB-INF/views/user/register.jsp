<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행시그널 회원가입</title>
    <link href="${path}/resources/css/style.css" rel="stylesheet"/>
</head>
<body>
    <form action="/user/register" method="post">

        <h3 class="login" style="letter-spacing:-1px;">회원가입</h3>

        <hr>

        <!-- <span>ID</span> -->
        <p style="text-align: left; font-size:12px; color:#666">username</p>
        <input type="text" id="id" name="id" placeholder="아이디" class="size" required>
        <p></p>
        </label><!--아이디-->

        <label for="password">
        <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color:#666">Password </p>
        <input type="password" id="password" name="password" placeholder="비밀번호" class="size" required>
        </label><!--비밀번호-->

        <label for="nickname">
            <p style="text-align: left; font-size: 12px; color: #666;">NickName</p>
            <input type="text" id="nickname" name="nickname" placeholder="닉네임" class="size">
        </label>

		 <label for="name">
		  <p style="text-align: left; font-size: 12px; color: #666;">Name</p>
      	<input type="text" id="name" name="name" placeholder="이름" class="size" required><br>
		</label>	
        
            <tr>
            <p style="text-align: left; font-size: 12px; color: #666;">생년월일</p>
            <td><input type="date" id="birthdate" name="birthdate" class="textform" required/></td>
            </tr>
        

        <div>
        <label for="gender">
            <p style="text-align: left; font-size: 12px; color: #666;">성별선택</p>
        
        <input type="radio" id="gender" name="gender" value="M" required>남성
        <input type="radio" id="gender" name="gender" value="F" required>여성
        </label>
        </div>

        <div>
            <p style="text-align: left; font-size: 12px; color: #666;">MBTI</p>
        <select name="MBTI">
            <option value="mbti">MBTI유형</option>
            <option value="관리자형">ISTJ(현실주의자)</option>
            <option value="관리자형">ISFJ(수호자)</option>
            <option value="관리자형">ESTJ(경영자)</option>
            <option value="관리자형">ESFJ(집정관)</option>
            <option value="탐험가형">ISTP(장인)</option>
            <option value="탐험가형">ISFP(모험가)</option>
            <option value="탐험가형">ESFJ(연예인)</option>
            <option value="탐험가형">ESTP(사업가)</option>
            <option value="외교관형">INFJ(옹호자)</option>
            <option value="외교관형">INFP(중재자)</option>
            <option value="외교관형">ENFP(활동가)</option>
            <option value="외교관형">ENFJ(선도자)</option>
            <option value="분석가형">INTJ(전략가)</option>
            <option value="분석가형">INTP(논리술사)</option>
            <option value="분석가형">ENTP(변론가)</option>
            <option value="분석가형">ENTJ(통솔자)</option>
        </select>
        </div>

		 
		<div>
        <label for="likeArea">
        <p style="text-align: left; font-size: 12px; color: #666;">좋아하는 지역</p>
      <select id="likeArea" name="likearea" required>
        <option value="">좋아하는 지역을 선택하세요</option>
        <option value="asia">아시아</option>
        <option value="europe">유럽</option>
        <option value="northamerica">북아메리카</option>
        <option value="southamerica">남아메리카</option>
        <option value="africa">아프리카</option>
        <option value="oceania">오세아니아</option>
        </select><br>
        </label>
        </div>

        <label for="phoneNumber">
            <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color:#666">Mobile Phone</p>
            <select class="size num1">
                <option value="1" selected>SKT</option>
                <option value="2" selected>KT</option>
                <option value="3" selected>LG</option>
            </select>
            <input placeholder="-빼고 숫자만 입력"  class="size num2" id="phoneNumber" name="phoneNumber" required>
         </label> <!--전화번호-->


	<label for="rating">
	<p style="text-align: left; font-size: 12px; color: #666;">평점</p>
  	<input type="number" id="rating" name="rating" min="0" max="5" step="0.1" required><br>
  	</label>

         <label for="email">
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">E-mail</p>
                <input type="text" placeholder="이메일" id="email" name="email" class="size">
        </label> <!--이메일-->  


    <br>
        <p>
            <input type="submit" value="회원가입
            " class="btn">
            
        </p>
    </form>

    <hr>
    <p class="find">
        <span><a href="/home">로그인 페이지로 이동</a></span>
    </p>
    </div>
    <div>
    </div><!--con-->

</body>
</html>