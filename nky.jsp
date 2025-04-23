<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>4CO4CO</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="HTML5 website template" />
    <meta name="keywords" content="global, template, html, sass, jquery" />
    <meta name="author" content="Bucky Maler" />
    <link rel="stylesheet" href="assets/css/nky.css" />
    <link rel="stylesheet" href="assets/css/dain.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <link rel="icon" type="image/png" href="assets/img/4co4co_icon_2.png">
    <script
      src="https://kit.fontawesome.com/f4cec5df28.js"
      crossorigin="anonymous"
    ></script>
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9be8de46cc892ba13e3d93b26b3600ad&libraries=services"
    ></script>
  </head>
  <body>
    <div class="perspective effect-rotate-left">
      <div class="container">
        <div class="outer-nav--return"></div>
        <div id="viewport" class="l-viewport">
          <div class="l-wrapper">
            <jsp:include page="/comm/header.jsp" />
            <jsp:include page="/comm/leftSideNav.jsp"></jsp:include>
            <ul class="l-main-content main-content">
              <li class="l-section section section--is-active">
                <div class="intro">
                  <div class="intro--banner">
                    <h1>Developer<br />Nam KiYun</h1>
                    <button class="cta" 
                    onclick="location.href='https://github.com/nam-kiyun'">
                      GITHUB
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
                      <span class="btn-background"></span>
                    </button>
                    <img
                      src="assets/img/nky.png"
                      alt="Welcome"
                      class="nky"
                    />
                  </div>
                  <div class="intro--options">
                    <a href="#0">
                      <h3>UNIV & MAJOR</h3>
                      <p>제주대학교 컴퓨터공학전공</p>
                    </a>
                    <a href="#0">
                      <h3>AGE</h3>
                      <p>
                        27
                      </p>
                    </a>
                    <a href="#0">
                      <h3>EMAIL</h3>
                      <p>
                        fordnam1@gmail.com
                      </p>
                    </a>
                  </div>
                </div>
              </li>
              <!-- 3번째 -->
              <li class="l-section section">
                <div class="hire">
                  <h2>My Skills</h2>
                  <!-- checkout formspree.io for easy form setup -->

                  <div class="work-request--options">
                    <span class="options-a">
                      <input id="opt-1" type="checkbox" value="app design" />
                      <label for="opt-1">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        HTML
                      </label>
                      <input
                        id="opt-2"
                        type="checkbox"
                        value="graphic design"
                      />
                      <label for="opt-2">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        CSS
                      </label>
                      <input id="opt-3" type="checkbox" value="motion design" />
                      <label for="opt-3">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        JavaScript
                      </label>
                    </span>
                    <span class="options-b">
                      <input id="opt-4" type="checkbox" value="ux design" />
                      <label for="opt-4">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        React
                      </label>
                      <input id="opt-6" type="checkbox" value="marketing" />
                      <label for="opt-6">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        Java
                      </label>
                      <input id="opt-7" type="checkbox" value="java" />
                      <label for="opt-7">
                        <svg
                          version="1.1"
                          id="Layer_1"
                          xmlns="http://www.w3.org/2000/svg"
                          xmlns:xlink="http://www.w3.org/1999/xlink"
                          x="0px"
                          y="0px"
                          viewBox="0 0 150 111"
                          style="enable-background: new 0 0 150 111"
                          xml:space="preserve"
                        >
                          <g
                            transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)"
                          >
                            <path
                              d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"
                            />
                          </g>
                        </svg>
                        Flutter
                      </label>
                    </span>
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
                          <p class="slider--item-description">청하</p>
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
                      <span> : 혼자 있는 시간이 편하고 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 54%" class="progress ei">
                        <span>54%</span>
                      </div>
                    </div>
                    <label class="label">
                      S
                      <span> : 현실적이며 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 54%" class="progress ns">
                        <span>54%</span>
                      </div>
                    </div>
                    <label class="label">
                      F
                      <span style="font-size: 15px">
                        : 관계를 중시하고
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
                        : 그때그때 상황에 맞게 행동한다
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
                <div class="map-container">
                  <h2 class="map-title">Map</h2>
                  <div class="map-map" id="map"></div>
                  <div class="map-buttons">
                    <button onclick="toggleCategory('CE7')">카페</button>
                    <button onclick="toggleCategory('FD6')">음식점</button>
                    <button id="set-destination-btn">도착지 설정</button>
                  </div>
                </div>
                
              </li>
            </ul>
          </div>
        </div>
      </div>
      <jsp:include page="/comm/outNav.jsp"></jsp:include>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
      window.jQuery ||
        document.write(
          '<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>'
        );
    </script>
    <script src="assets/js/functions-min.js"></script>
    <script src="assets/js/dain.js"></script>
    <script src="./assets/js/map.js"></script>
  </body>
</html>
