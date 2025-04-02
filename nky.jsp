<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Global</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="HTML5 website template">
  <meta name="keywords" content="global, template, html, sass, jquery">
  <meta name="author" content="Bucky Maler">
  <link rel="stylesheet" href="assets/css/nky.css">
  <link rel="stylesheet" href="assets/css/dain.css" />
    <script
      src="https://kit.fontawesome.com/f4cec5df28.js"
      crossorigin="anonymous"
    ></script>
 <script src="assets/js/dain.js"></script>
  <script type="text/javascript" 
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9be8de46cc892ba13e3d93b26b3600ad&libraries=services"></script>
                <script defer>
document.querySelectorAll('.slider--item-center').length;
document.querySelectorAll('.slider--item');
                  let closeOverlay;
                  window.closeOverlay = function () {
    if (customOverlay) {
      customOverlay.setMap(null);
    }
  };
                  document.addEventListener("DOMContentLoaded",function() {
                    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                    var options = { //지도를 생성할 때 필요한 기본 옵션
                    center: new kakao.maps.LatLng(37.583883601891, 126.9999880311
), //지도의 중심좌표.
                    level: 3 //지도의 레벨(확대, 축소 정도)
                };
                if (container) {
        // 지도를 생성합니다    
        var map = new kakao.maps.Map(container, options);
        var marker = new kakao.maps.Marker({
            position: map.getCenter() // 현재 지도 중심 위치에 마커 추가
        });

        // 지도에 마커 표시
        marker.setMap(map);
        var ps = new kakao.maps.services.Places(map); // 장소 검색 객체 생성
        var infowindow = new kakao.maps.InfoWindow({ 
          zIndex: 1 ,
          removable: true
        });

        // ✅ 마커 저장용 객체
        var markers = {
            'CE7': [], // 카페 마커
            'FD6': []  // 음식점 마커
        };

        // ✅ 카테고리별 마커 표시/숨김 함수
        window.toggleCategory = function (category) {
            if (markers[category].length > 0) {
                // 마커가 이미 표시된 상태 → 마커 삭제
                markers[category].forEach(marker => marker.setMap(null));
                markers[category] = []; // 배열 초기화
            } else {
                // 마커가 없는 상태 → 장소 검색 후 마커 표시
                ps.categorySearch(category, function (data, status) {
                    if (status === kakao.maps.services.Status.OK) {
                        data.forEach(place => {
                            var marker = new kakao.maps.Marker({
                                position: new kakao.maps.LatLng(place.y, place.x),
                                map: map
                            });

                            customOverlay = new kakao.maps.CustomOverlay({
    map: null, // 처음엔 안 띄움
    position: null,
    content: null,
    yAnchor: 1 // 말풍선 꼬리를 없애고 아래 여백 설정
});
                            // 마커 클릭 시 장소명 표시
                            // 마커 클릭 시 상세 정보 표시
                            kakao.maps.event.addListener(marker, 'click', function () {
    const name = place.place_name || '이름 없음';
    const address = place.road_address_name || place.address_name || '주소 정보 없음';
    const phone = place.phone ? '전화: ' + place.phone : '';

    const content = document.createElement('div');
    content.className = 'custom-infowindow';
    content.innerHTML = `
        <div class="infowindow-header">
          <button class="close-btn">×</button>
        </div>
        <div class="infowindow-body">
          <strong>${name}</strong><br/>
          ${address}<br/>
          ${phone ? phone + '<br/>' : ''}
          <a href="${place.place_url}" target="_blank">상세보기</a>
        </div>
    `;

    content.querySelector('.close-btn').addEventListener('click', function () {
    customOverlay.setMap(null);
  });

    customOverlay.setContent(content);
    customOverlay.setPosition(marker.getPosition());
    customOverlay.setMap(map);
});
                            markers[category].push(marker); // 마커 저장
                        });
                    }
                }, { useMapBounds: true });
            }
        };
}
  });
              </script>
</head>
<body>

<!-- notification for small viewports and landscape oriented smartphones -->
<div class="device-notification">
  <a class="device-notification--logo" href="#0">
    <img src="assets/img/logo.png" alt="Global">
    <p>Global</p>
  </a>
  <p class="device-notification--message">Global has so much to offer that we must request you orient your device to portrait or find a larger screen. You won't be disappointed.</p>
</div>

<div class="perspective effect-rotate-left">
  <div class="container"><div class="outer-nav--return"></div>
    <div id="viewport" class="l-viewport">
      <div class="l-wrapper">
        <header class="header">
          <a class="header--logo" href="./index.html">
            <img src="assets/img/logo.png" alt="Global">
            <p>Global</p>
          </a>
          <button class="header--cta cta">Hire Us</button>
          <div class="header--nav-toggle">
            <span></span>
          </div>
        </header>
        <jsp:include page="./assets/comm/leftSideNav.jsp"></jsp:include>
        <ul class="l-main-content main-content">
          <li class="l-section section section--is-active">
            <div class="intro">
              <div class="intro--banner">
                <h1>Developer<br>Nam KiYun</h1>
                <button class="cta">Hire Us
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 150 118" style="enable-background:new 0 0 150 118;" xml:space="preserve">
                  <g transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                    <path d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z"/>
                  </g>
                  </svg>
                  <span class="btn-background"></span>
                </button>
                <img src="assets/img/introduction-visual.png" alt="Welcome">
              </div>
              <div class="intro--options">
                <a href="#0">
                  <h3>제주대학교</h3>
                  <p>컴퓨터공학전공</p>
                </a>
                <a href="#0">
                  <h3>Fantasy interactive</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
                <a href="#0">
                  <h3>Paul &amp; shark</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
              </div>
            </div>
          </li>
          <!-- 3번째 -->
          <li class="l-section section">
            <div class="about">
              <div class="about--banner">
                <h2>We<br>believe in<br>passionate<br>people</h2>
                <a href="#0">Career
                  <span>
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 150 118" style="enable-background:new 0 0 150 118;" xml:space="preserve">
                    <g transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                      <path d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z"/>
                    </g>
                    </svg>
                  </span>
                </a>
                <img src="assets/img/about-visual.png" alt="About Us">
              </div>
              <div class="about--options">
                <a href="#0">
                  <h3>Winners</h3>
                </a>
                <a href="#0">
                  <h3>Philosophy</h3>
                </a>
                <a href="#0">
                  <h3>History</h3>
                </a>
              </div>
            </div>
          </li>
          <li class="l-section section">
            <div class="work">
              <h2>MUSIC</h2>
              <div class="work--lockup">
                <ul class="slider">
                  <li class="slider--item slider--item-left">
                    <a href="#0">
                      <div class="slider--item-image">
                        <img src="assets/img/음율_행복론.jpg" alt="needy" />
                        <div class="slider--item-image controls hidden">
                          <div>
                            <i class="fa-solid fa-play ctrlIcon"></i>
                          </div>
                        </div>
                      </div>
                      <p class="slider--item-title">반비례</p>
                      <p class="slider--item-description">음율</p>
                      <audio class="slider--item-description song">
                        <source src="assets/mp3/반비례.mp3" />
                      </audio>
                    </a>
                  </li>
                  <li class="slider--item slider--item-center">
                    <a href="#0">
                      <div class="slider--item-image">
                        <img src="assets/img/Stress.jpg" alt="needy" />
                        <div class="slider--item-image controls">
                          <div>
                            <i class="ctrlIcon fa-solid fa-play"></i>
                          </div>
                        </div>
                      </div>
                      <p class="slider--item-title">Stress</p>
                      <p class="slider--item-description">
                        청하
                      </p>
                      <audio class="slider--item-description song">
                        <source src="assets/mp3/Stress.mp3" />
                      </audio>
                    </a>
                  </li>
                  <li class="slider--item slider--item-right">
                    <a href="#0">
                      <div class="slider--item-image">
                        <img
                          src="assets/img/음율_행복론.jpg"
                          alt="oriental-wind"
                        />
                        <div class="slider--item-image controls hidden">
                          <div>
                            <i class="ctrlIcon fa-solid fa-play"></i>
                          </div>
                        </div>
                      </div>
                      <p class="slider--item-title">피차일반</p>
                      <p class="slider--item-description">음율</p>
                      <audio class="slider--item-description song">
                        <source src="assets/mp3/피차일반.mp3" />
                      </audio>
                    </a>
                  </li>
                </ul>
                <div class="slider--prev">
                  <svg
                    version="1.1"
                    id="Layer_1"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    viewBox="0 0 150 118"
                    style="enable-background: new 0 0 150 118"
                    xml:space="preserve"
                  >
                    <g
                      transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)"
                    >
                      <path
                        d="M561,1169C525,1155,10,640,3,612c-3-13,1-36,8-52c8-15,134-145,281-289C527,41,562,10,590,10c22,0,41,9,61,29
                c55,55,49,64-163,278L296,510h575c564,0,576,0,597,20c46,43,37,109-18,137c-19,10-159,13-590,13l-565,1l182,180
                c101,99,187,188,193,199c16,30,12,57-12,84C631,1174,595,1183,561,1169z"
                      />
                    </g>
                  </svg>
                </div>
                <div class="slider--next">
                  <svg
                    version="1.1"
                    id="Layer_1"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    viewBox="0 0 150 118"
                    style="enable-background: new 0 0 150 118"
                    xml:space="preserve"
                  >
                    <g
                      transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)"
                    >
                      <path
                        d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z"
                      />
                    </g>
                  </svg>
                </div>
              </div>
            </div>
          </li>
          <li class="l-section section">
            <div class="about">
              <div style="height: 200px" class="about--banner">
                <h2 style="font-size: 100px">
                  ISFP
                  <br />
                </h2>
              </div>
              <div style="margin-top: 35px">
                <label class="label">
                  I
                  <span> : 밖에 나가는 것을 좋아하고 </span>
                </label>
                <div class="progress-bar">
                  <div style="width: 54%" class="progress ei">
                    <span>54%</span>
                  </div>
                </div>
                <label class="label">
                  S
                  <span> : 직관적으로 생각하며 </span>
                </label>
                <div class="progress-bar">
                  <div style="width: 54%" class="progress ns">
                    <span>54%</span>
                  </div>
                </div>
                <label class="label">
                  F
                  <span style="font-size: 15px">
                    : 이성적으로 판단하면서
                  </span>
                </label>
                <div class="progress-bar">
                  <div style="width: 56%" class="progress tf">
                    <span>56%</span>
                  </div>
                </div>
                <label class="label">
                  P
                  <span style="font-size: 15px">
                    : 즉흥적으로 살아갑니다
                  </span>
                </label>
                <div class="progress-bar">
                  <div style="width: 68%" class="progress pj">
                    <span>68%</span>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <!-- 5번째 -->
          <li class="l-section section">
            <div class="map">
              <h2>Map</h2>
              <div class="map-map" id="map"></div>
              <div class="map-buttons">
                <button onclick="toggleCategory('CE7')">카페</button>
                <button onclick="toggleCategory('FD6')">음식점</button>                  
              </div>
            </div>
      
          </li>
        
        </ul>
      </div>
    </div>
  </div>
  <ul class="outer-nav">
    <li class="is-active">Home</li>
    <li>My Skills</li>
    <li>My Favorite</li>
    <li>Music</li>
    <li>My Mbti</li>
    <li>Map</li>
  </ul>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>')</script>
<script src="assets/js/functions-min.js"></script>

</body>

</html>
