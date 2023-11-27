<%@page import="model.BOOKING"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/10601bc38f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="main.css" />

    <script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=271d85ba9d35da1babada0764a40fc5b&libraries=services"></script>
</head>

<body class="main">
    <header class="filtering">
        <div class="filter_wrapper">
            <div class="filter_start"></div>
            <a href="#" class="filter_icon"><i class="fa-solid fa-sliders"></i></i>
            </a>
            <div class="filter_wrapper2">
                <ul class="filter_section">
                    <li><a href="#"><i class="fa-solid fa-money-bill"></i> <span class="fil">가격이 합리적이에요</span></a></li>
                    <hr>
                    <li><a href="#"><i class="fa-solid fa-child"></i> <span class="fil">관리인이 친절해요</span></a></li>
                    <hr>
                    <li><a href="#"><i class="fa-solid fa-car"></i> <span class="fil">발렛파킹이 가능해요</span></a></li>
                    <hr>
                    <li><a href="#"><i class="fa-solid fa-arrows-left-right-to-line"></i> <span class="fil">주차자리 간격이
                                넓어요</span></a></li>
                    <hr>
                    <li><a href="#"><i class="fa-solid fa-umbrella-beach"></i> <span class="fil">그늘막이 있어요</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <nav class="nav">
        <ul class="nav_wrapper">
            <p><img class="main_img" src="./resources/img/주차랑께.png" alt=""></p>
            <hr class="nav_hr">
            <a href="#" class="nav_list0">
                <li class="nav_list_in clicked">
                    <button class="nav_icon"><i class="fa-solid fa-house"></i></button>
                    <button class="nav_menu">홈</button>
                </li>
            </a>
            <!-- 메인의 로그인 버튼 여기에 로그인 페이지로 넘어가게 링크 달기  -->
         <!-- 로그인 값이 없으면 if 안이 뜨고 있으면 else 안이 뜨게 해야함.. -->
         <%
         MEMBER loginMember = (MEMBER) session.getAttribute("loginMember");
         %>
         <%
         if (loginMember == null) {
         %>
               <a href="login.html" class="nav_list1">
            <li class="nav_list_in">
               <button class="nav_icon">
                  <i class="fa-solid fa-right-to-bracket"></i>
               </button>
               <button class="nav_menu">로그인</button>
         </li>
         </a>
         <%
         } else {
         %>
         <a href="#" class="nav_list1">
            <li class="nav_list_in">
               <button class="nav_icon">
                  <i class="fa-solid fa-right-to-bracket"></i>
               </button>
               <button class="nav_menu">마이페이지</button>
         </li>
         </a>
         <%
         if (loginMember.getID().equals("admin")) {
         %>
         <a href="car.html" class="nav_list1">
            <li class="nav_list_in">
               <button class="nav_icon">
                  <i class="fa-solid fa-right-to-bracket"></i>
               </button>
               <button class="nav_menu">주차정보등록</button>
         </li>
         </a>
         </a>
         <a href="parkingloginCheck.jsp" class="nav_list1">
            <li class="nav_list_in">
               <button class="nav_icon">
                  <i class="fa-solid fa-right-to-bracket"></i>
               </button>
               <button class="nav_menu">주차정보수정</button>
         </li>
         </a>
         <% }%>
            <a href="#" class="nav_list2">
                <li class="nav_list_in">
                    <button class="nav_icon"><i class="fa-regular fa-calendar-check"></i></button>
                    <button class="nav_menu">예약목록</button>
                </li>
            </a>
            <a href="#" class="nav_list3">
                <li class="nav_list_in">
                    <button class="nav_icon"><i class="fa-solid fa-star"></i></button>
                    <button class="nav_menu">즐겨찾기</button>
                </li>
            </a>
            <%
         }
         %>
            <a href="#" class="nav_list4">
                <li class="nav_list_in">
                    <button class="nav_icon"><i class="fa-solid fa-gear"></i></button>
                    <button class="nav_menu">환경설정</button>
                </li>
            </a>
        </ul>
    </nav>
     <%
         if (loginMember != null) {
         %>
   <iframe src="./detail.html"
      onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
   </iframe>
   <iframe src="./detail2.jsp"
      onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
   </iframe>
   <iframe src="./detail3.jsp"
      onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()">
   </iframe>
   <%} %>
    <nav class="nav5" id="nav5">
        <ul class="nav5_center">
            <li class="nav5_userbox">
                <p><img class="main_img" src="./resources/img/주차랑께.png" alt=""></p>
                
                <div class="nav5_ask">어떤 점이 좋았나요?</div>
                <p class="nav5_ask2">이 주차장에 어울리는 키워드를 골라주세요</p>
                
            </li>
        </ul>

        <ul class="nav5_box">
            <a href="#" class="btn">
                <p><i class="fa-solid fa-arrows-left-right-to-line"></i></p>
                <h4>"주차자리 간격이 넓어요"</h4>
            </a>
            <div class="modal">
                <!-- 첫 번째 Modal의 내용 -->
                <div class="modal-content">
                  <p><img class="modal_img" src="./resources/img/주차랑께.png" alt=""></p>
                  <span>소중한 후기 감사합니다</span>
                  <button class="close">닫기</button>
                  
                </div>
              </div>
            <a href="#" class="btn">
                <p><i class="fa-solid fa-money-bill"></i></p>
                <h4>"가격이 합리적이에요"</h4>
            </a>
            <div class="modal">

                <!-- 두 번째 Modal의 내용 -->
                <div class="modal-content">
                  <p><img class="modal_img" src="./resources/img/주차랑께.png" alt=""></p>
                  <span>소중한 후기 감사합니다</span>
                  <button class="close">닫기</button>
                  
                </div>
              </div>
            <a href="#" class="btn">
                <p><i class="fa-solid fa-child"></i></p>
                <h4>"관리인이 친절해요"</h4>
            </a>
            <div class="modal">

                <!-- 세 번째 Modal의 내용 -->
                <div class="modal-content">
                  <p><img class="modal_img" src="./resources/img/주차랑께.png" alt=""></p>
                  <span>소중한 후기 감사합니다</span>
                  <button class="close">닫기</button>
                  
                </div>
              </div>
            <a href="#" class="btn">
                <p><i class="fa-solid fa-car"></i></p>
                <h4>"발렛파킹이 가능해요"</h4>
            </a>
            <div class="modal">

                <!-- 네 번째 Modal의 내용 -->
                <div class="modal-content">
                  <p><img class="modal_img" src="./resources/img/주차랑께.png" alt=""></p>
                  <span>소중한 후기 감사합니다</span>
                  <button class="close">닫기</button>
                  
                </div>
              </div>
            <a href="#" class="btn">
                <p><i class="fa-solid fa-umbrella-beach"></i></p>
                <h4>"그늘막이 있어요"</h4>
            </a>
            <div class="modal">

                <!-- 다섯 번째 Modal의 내용 -->
                <div class="modal-content">
                  <p><img class="modal_img" src="./resources/img/주차랑께.png" alt=""></p>
                  <span>소중한 후기 감사합니다</span>
                  <button class="close">닫기</button>
                  
                </div>
              </div>
        </ul>
    </nav>
</body>
<!--추가한 html 부분-->
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;">
        <div id="menu_wrap" class="bg_white">
            <div class="option">
                <div>
                    <form onsubmit="searchPlaces(); return false;">
                        키워드 : <input type="text" value="광주 동명동 주차장" id="keyword" size="15">
                        <button type="submit">검색하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="main.js" defer></script>
<script src="map.js"></script>

<script>
//지도함수
      var markers = [];
      var overlays = [];
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
              level: 3 // 지도의 확대 레벨
          };
      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption);



      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      // 키워드로 장소를 검색합니다
      searchPlaces();
      function searchPlaces() {

          var keyword = document.getElementById('keyword').value;

          if (!keyword.replace(/^\s+|\s+$/g, '')) {
              alert('키워드를 입력해주세요!');
              return false;
          }

          // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
          ps.keywordSearch(keyword, placesSearchCB);
      }

      // 키워드 검색 완료 시 호출되는 콜백함수 입니다
      function placesSearchCB(data, status, pagination) {
          removeMarker();
          removeOverlay();
          if (status === kakao.maps.services.Status.OK) {

              // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
              // LatLngBounds 객체에 좌표를 추가합니다
              var bounds = new kakao.maps.LatLngBounds();

              for (var i = 0; i < data.length; i++) {
                  displayMarker(data[i]);
                  bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
              }

              // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
              map.setBounds(bounds);
              
          }
          
      }

      function displayMarker(place) {

          var imageSrc = './resources/img/주차장마커.png', // 마커이미지의 주소입니다    
              imageSize = new kakao.maps.Size(40, 42), // 마커이미지의 크기입니다
              imageOption = { offset: new kakao.maps.Point(20, 42) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다
          // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
              markerPosition = new kakao.maps.LatLng(place.y, place.x); // 마커가 표시될 위치입니다

          var marker = new kakao.maps.Marker({
              map: map,
              position: new kakao.maps.LatLng(place.y, place.x),
              image: markerImage
          });
          
          // 커스텀 오버레이에 표시할 컨텐츠
          var content = '<div class="wrap" id="wrap">' +
              '<div class="info">' +
              '<div class="title">' +
              place.place_name +
              '<div class ="close" onclick="closeOverlay()" title="닫기"></div>' +
              '</div>' +
              '<div class="body">' +
              '<div class="desc">' +
              '<div class="ellipsis">주차장 주소가 들어가는 곳입니다</div>' +
              '<div class="jibun ellipsis">여기에는 주차장 상세 정보가 들어가야 합니다아아아아ㅏㅇ아아ㅏ아아아아아아아아ㅏㅏㅏ아아아앙</div>' + 
              '<button class="map_icon_button" onclick="map_trans()">예약하기</button>' +
              '</div>' +
              '</div>' +
              '</div>' +
              '</div>';
          var position = new kakao.maps.LatLng(place.y, place.x);
          // 마커 위에 커스텀오버레이 표시
          // 마커를 중심으로 커스텀  오버레이 표시하기 위해 css 이용해 위치 설정
          var overlay = new kakao.maps.CustomOverlay({
              map: map,
              position: position,
              content: content,
              xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
              yAnchor: 1.1 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
          })
          
          overlay.setMap(null);
          // 마커 클릭했을 때 커스텀 오버레이 표시
          kakao.maps.event.addListener(marker, 'click', function () {
              overlay.setMap(map);
              overlays.push(overlay)
          })
          markers.push(marker)
          overlays.push(overlay)
      }
      // 지도 위에 표시되고 있는 마커, 오버레이를 모두 제거합니다
      function removeMarker() {
          for ( var i = 0; i < markers.length; i++ ) {
              markers[i].setMap(null);
          }   
          markers = [];
      }
      function removeOverlay() {
          for ( var i = 0; i < overlays.length; i++ ) {
              overlays[i].setMap(null);
          }   
          overlays = [];
          console.log("removed");
        
      }
      function closeOverlay() {
          removeOverlay();
          console.log("clicked");
        
      }




        // main과 연결된 모든 함수들
     // Modal을 가져옵니다.
     var modals = document.getElementsByClassName("modal");
     // Modal을 띄우는 클래스 이름을 가져옵니다.
     var btns = document.getElementsByClassName("btn");
     // Modal을 닫는 close 클래스를 가져옵니다.
     var spanes = document.getElementsByClassName("close");
     var funcs = [];
      
     // Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
     function Modal(num) {
       return function() {
         // 해당 클래스의 내용을 클릭하면 Modal을 띄웁니다.
         btns[num].onclick =  function() {
             modals[num].style.display = "block";
             console.log(num);
         };
      
         // <span> 태그(X 버튼)를 클릭하면 Modal이 닫습니다.
         spanes[num].onclick = function() {
             modals[num].style.display = "none";

             console.log(num);
             console.log("close");
             document.getElementById("nav5").style.display = "none"; 
             nav_list2[1].classList.remove("clicked");
             nav_list2[0].classList.add("clicked");
         };
       };
     }
      
     // 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의합니다.
     for(var i = 0; i < btns.length; i++) {
       funcs[i] = Modal(i);
     }
      
     // 원하는 Modal 수만큼 funcs 함수를 호출합니다.
     for(var j = 0; j < btns.length; j++) {
       funcs[j]();
     }
      
     // Modal 영역 밖을 클릭하면 Modal을 닫습니다.
     window.onclick = function(event) {
       if (event.target.className == "modal") {
           event.target.style.display = "none";
           document.getElementById("nav5").style.display = "none"; 
           nav_list2[1].classList.remove("clicked");
           nav_list2[0].classList.add("clicked");
       }
     };
     // 리뷰바
     const spans = document.querySelectorAll('.progress-bar span');

     spans.forEach((span)=>{
         span.style.width = span.dataset.width;
         span.innerHTML = span.dataset.width;
     });
     spans.forEach((span)=>{
         span.style.opacity = span.dataset.width;
         span.innerHTML = span.dataset.width;
     });

     // 필터링 클릭이벤
     const toggle = document.querySelector('.filter_icon');
     const wrap = document.querySelector('.filter_wrapper2');

     toggle.addEventListener('click',()=>{
         wrap.classList.toggle('active');
     });


     const icon = document.querySelector('.nav_icon');
     // 왼쪽버튼 클릭이벤
     let nav_list = document.getElementsByClassName('nav_list_in');

     function handleClick(event){
         if(event.target.classList[1]==="clicked"){
             event.target.classList.remove("clicked");
         }else{
             for(var i = 0; i <nav_list.length; i++){
                 nav_list[i].classList.remove("clicked");
             }
             event.target.classList.add("clicked");
             
         }
         if(nav_list[1].classList.contains("clicked")){
             document.getElementById("nav3").style.display = "block";
         }else{
             document.getElementById("nav3").style.display = "none";
             
         }
     }

     function init(){
         for(var i = 0; i <nav_list.length; i++){
             nav_list[i].addEventListener("click",handleClick,{capture:true});
         }
     }

     init();
     let nav_list2 = document.querySelectorAll('.nav_list_in');
     function userinfo_del(){
         document.getElementById("nav3").style.display = "none";   
         nav_list2[1].classList.remove("clicked");
         nav_list2[0].classList.add("clicked");
     }



     function detail_trans(){
         document.getElementById("nav2").style.display = "none";
     }
     function go_nav4(){
         document.getElementById("nav4").style.display = "block";
         document.getElementById("nav3").style.display = "none";
     }
     function payinfo_del(){
         document.getElementById("nav4").style.display = "none";   
         nav_list2[1].classList.remove("clicked");
         nav_list2[0].classList.add("clicked");
     }
     function review_open(){
         document.getElementById("nav5").style.display = "block";   
         document.getElementById("nav4").style.display = "none"; 
       
     }
     function map_trans() {
           document.getElementById("nav2").style.display = "block";
           
       }

    </script>




</html>