<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주차</title>
    <link rel="stylesheet" href="login.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<% PARKING parking = (PARKING)session.getAttribute("Parking");%>
    <!-- 주차장 여유공간 등록 화면 -->
    <div class="login">
    <div class="login__content">
      <div class="login__img">
        <img src="./META-INF/imges/주차랑께.png" alt="user login"style="width: 150px;height: 150px; margin: heigth 200px;">
      </div>
    <div class="login__forms">
    <form action="PARKING_check" method="post" class="login__register" id="login-in">
        <h1 class="login__title"> <%=parking.getP_PLACE() %><br>현재 주차장 상황</h1>
        <!-- <div class="login__box" style="display: inline;" >          -->
          <i class='bx bx-user login__icon'></i>
            <!-- 주차 여유 공간 버튼 -->          
            <div class="wrapper"> 
             <label for="park_yn" class="park_yn_label">현재 주차 가능</label>
              <input type="checkbox" id="switch" name="P_YN" value="주차가능">
              <label for="switch" class="switch_label">
                <span class="onf_btn"></span>
              </label>
          </div>
        <!-- </div> -->
        
        <div class="login__box">
          <i class='bx bx-lock login__icon'></i>
          <input type="text" placeholder="현재 주차 대수" class="login__input" name="P_COUNT">
        </div>
        <div class="login__box">  
            <i class='bx bx-lock login__icon'></i>
            <input type="text" placeholder="주차 가능 대수" class="login__input" name="P_POS">
            <!-- 숨겨 놓기!!! -->
        <input type="hidden" name="P_PlACE" value="<%=parking.getP_PLACE()%>">
        <input type="hidden" name="P_TYPE" value="<%=parking.getP_TYPE()%>">
        <input type="hidden" name="P_ADDRESS" value="<%=parking.getP_ADDRESS()%>">
        <input type="hidden" name="P_FULL" value="<%=parking.getP_FULL()%>">
        <input type="hidden" name="P_PRICE" value="<%=parking.getP_PRICE()%>">
        <input type="hidden" name="P_TIME" value="<%=parking.getP_TIME()%>">
        <input type="hidden" name="P_INFO" value="<%=parking.getP_INFO()%>">
        <input type="hidden" name="P_ABLE" value="<%=parking.getP_ABLE()%>">
          </div>
 
        <input type="submit" value="등록 완료" class="login__buttons btnFloat" style="cursor: pointer;">
      </form>
      </div>
    </div>
</div>
</body>
</html>