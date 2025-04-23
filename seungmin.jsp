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
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/dain.css" />
    <link rel="stylesheet" href="assets/css/canvas.css" />
    <link rel="icon" type="image/png" href="assets/img/4co4co_icon_2.png">
    <script
      src="https://kit.fontawesome.com/f4cec5df28.js"
      crossorigin="anonymous"
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
                    <h1>Developer<br />Lee Seungmin<br /></h1>
                    <button
                      class="cta"
                      onclick="location.href='https://github.com/miloul'"
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
                    <img
                      src="assets/img/seungmin.png"
                      style="width: 60%; right: -150px"
                      alt="Welcome"
                    />
                  </div>
                  <div class="intro--options">
                    <a href="#0">
                      <h3>Univ &amp; Major</h3>
                      <p>경북대학교 컴퓨터학부</p>
                    </a>
                    <a href="#0">
                      <h3>Age</h3>
                      <p>25</p>
                    </a>
                    <a href="#0">
                      <h3>Email</h3>
                      <p>milouw56@gmail.com</p>
                    </a>
                  </div>
                </div>
              </li>
              <li class="l-section section">
                <div class="hire">
                  <h2>My Skills</h2>
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
                        HTML/CSS
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
                        JavaScript
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
                        TypeScript
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
                        Next
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
                        JAVA
                      </label>
                      <input id="opt-8" type="checkbox" value="sqld" />
                      <label for="opt-8">
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
                        SQLD
                      </label>
                    </span>
                  </div>
                </div>
              </li>
              <li class="l-section section">
                <div class="work">
                  <h2>My Favorite Music</h2>
                  <div class="work--lockup">
                    <ul class="slider">
                      <li class="slider--item slider--item-left">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img
                              src="assets/img/Better and better.png"
                              alt="better and better"
                            />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="fa-solid fa-play ctrlIcon"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">Better and better</p>
                          <p class="slider--item-description">wooz</p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/Better and better.mp3" />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-center">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/cupid.jpg" alt="cupid" />
                            <div class="slider--item-image controls">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">Cupid</p>
                          <p class="slider--item-description">Ph-1</p>
                          <audio class="slider--item-description song">
                            <source
                              src="assets/mp3/pH 1 Cupid Feat.PENOMECO MV.mp3"
                            />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-right">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/muhee.jpg" alt="muhee" />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">odoriko</p>
                          <p class="slider--item-description">Vaundy</p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/oord.mp3" />
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
                      ENTP
                      <br />
                    </h2>
                  </div>
                  <div style="margin-top: 35px">
                    <label class="label">
                      E
                      <span> : 밖에 나가는 것을 좋아하고  </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 64%" class="progress ei">
                        <span>64%</span>
                      </div>
                    </div>
                    <label class="label">
                      N
                      <span> : 직관적으로 생각하며 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 65%" class="progress ns">
                        <span>65%</span>
                      </div>
                    </div>
                    <label class="label">
                      T
                      <span style="font-size: 15px">
                        : 이성적으로 판단하면서
                      </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 60%" class="progress tf">
                        <span>60%</span>
                      </div>
                    </div>
                    <label class="label">
                      P
                      <span style="font-size: 15px">
                        : 즉흥적으로 살아갑니다
                      </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 61%" class="progress pj">
                        <span>61%</span>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="l-section section">
                <div class="work">
                  <h2>Canvas</h2>
                  <canvas id="canvas"></canvas>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <jsp:include page="/comm/outNav.jsp"></jsp:include>
    </div>
    <script src="assets/js/canvas.js"></script>
    <script src="assets/js/dain.js"></script>
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
