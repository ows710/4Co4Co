<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>GUKDAIN</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="HTML5 website template" />
    <meta name="keywords" content="global, template, html, sass, jquery" />
    <meta name="author" content="Bucky Maler" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/dain.css" />
    <script
      src="https://kit.fontawesome.com/f4cec5df28.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!-- notification for small viewports and landscape oriented smartphones -->
    <div class="device-notification">
      <a class="device-notification--logo" href="./index.jsp">
        <img src="assets/img/logo.png" alt="Global" />
        <p>Global</p>
      </a>
      <p class="device-notification--message">
        Global has so much to offer that we must request you orient your device
        to portrait or find a larger screen. You won't be disappointed.
      </p>
    </div>

    <div class="perspective effect-rotate-left">
      <div class="container">
        <div class="outer-nav--return"></div>
        <div id="viewport" class="l-viewport">
          <div class="l-wrapper">
            <jsp:include page="/comm/header.jsp" />
            <nav class="l-side-nav">
              <ul class="side-nav">
                <li class="is-active"><span>Home</span></li>
                <li><span>My Skills</span></li>
                <li><span>Favorite Music</span></li>
                <li><span>MBTI</span></li>
                <li><span>Hire us</span></li>
              </ul>
            </nav>
            <!-- 첫번째 부분 -->
            <ul class="l-main-content main-content">
              <li class="l-section section section--is-active">
                <div class="intro">
                  <div class="intro--banner">
                    <h1>Developer<br />Guk Dain<br /></h1>
                    <button
                      class="cta"
                      onclick="location.href='https://github.com/dorazi0423'"
                    >
                      Github
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
                    <img src="assets/img/dain.jpg" alt="Welcome" width="50%" />
                  </div>
                  <div class="intro--options">
                    <a href="#0">
                      <h3>Univ &amp; Major</h3>
                      <p>서울여자대학교 행정학과</p>
                    </a>
                    <a href="#0">
                      <h3>Age</h3>
                      <p>25</p>
                    </a>
                    <a href="#0">
                      <h3>Email</h3>
                      <p>dorazi0423@gmail.com</p>
                    </a>
                  </div>
                </div>
              </li>
              <!-- 두번째 부분 -->
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
                        Java
                      </label>
                    </span>
                  </div>
                </div>
              </li>
              <!-- 세번째 부분 -->
              <li class="l-section section">
                <div class="work">
                  <h2>MUSIC</h2>
                  <div class="work--lockup">
                    <ul class="slider">
                      <li class="slider--item slider--item-left">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/summer.png" alt="needy" />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="fa-solid fa-play ctrlIcon"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">여름날에 몽롱한</p>
                          <p class="slider--item-description">정민아</p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/summer.mp3" />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-center">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/needy.png" alt="needy" />
                            <div class="slider--item-image controls">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">needy</p>
                          <p class="slider--item-description">
                            아리아나 그란데
                          </p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/needy.mp3" />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-right">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img
                              src="assets/img/oriental-wind.png"
                              alt="oriental-wind"
                            />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">oriental-wind</p>
                          <p class="slider--item-description">조 히사이조</p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/oriental-wind.mp3" />
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
              <!-- 네번째 -->
              <li class="l-section section">
                <div class="about">
                  <div style="height: 200px" class="about--banner">
                    <h2 style="font-size: 100px">
                      ISTP
                      <br />
                    </h2>
                  </div>
                  <div style="margin-top: 35px">
                    <label class="label">
                      I
                      <span> : 집에 가고 싶어하며</span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 82%" class="progress ei">
                        <span>82%</span>
                      </div>
                    </div>
                    <label class="label">
                      N
                      <span> : 이상적으로 생각하며 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 61%" class="progress ns">
                        <span>61%</span>
                      </div>
                    </div>
                    <label class="label">
                      F
                      <span style="font-size: 15px"> : 감정적이고 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 65%" class="progress tf">
                        <span>65%</span>
                      </div>
                    </div>
                    <label class="label">
                      P
                      <span style="font-size: 15px"> : 무계획적으로 산다 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 71%" class="progress pj">
                        <span>71%</span>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <!-- 다섯번째 -->
              <li class="l-section section">
                <div class="about">
                  <div class="video-container">
                    <div class="border-top">
                      <div class="circle red"></div>
                      <div class="circle yellow"></div>
                      <div class="circle green"></div>
                    </div>
                    <video id="video" preload="metadata">
                      <source src="assets/mp4/video.mp4" type="video/mp4" />
                    </video>
                    <div id="video-menu">
                      <div class="video-progress-bar">
                        <input
                          type="range"
                          id="video-progress"
                          min="0"
                          step="0.1"
                        />
                      </div>
                      <div class="video-controls">
                        <div class="video-controls-left">
                          <button id="video-pause">
                            <i class="fa-solid fa-play"></i>
                          </button>

                          <button id="mute">
                            <i class="fa-solid fa-volume-off"></i>
                          </button>
                          <input
                            type="range"
                            id="volume"
                            min="0"
                            max="1"
                            step="0.1"
                            value="1"
                          />
                          <span id="current-time">0:00</span> /
                          <span id="duration">0:00</span>
                        </div>

                        <button id="fullscreen">
                          <i class="fa-solid fa-expand"></i>
                        </button>
                      </div>
                    </div>
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
        <li>My Favorite Music</li>
        <li>My MBTI</li>
        <li>Hire us</li>
      </ul>
    </div>
    <script src="assets/js/dain.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
      window.jQuery ||
        document.write(
          '<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>'
        );
    </script>
    <script src="assets/js/functions-min.js" type="module"></script>
  </body>
</html>
