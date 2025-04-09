<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>4CoCo</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="HTML5 website template" />
    <meta name="keywords" content="global, template, html, sass, jquery" />
    <meta name="author" content="Bucky Maler" />
    <link rel="stylesheet" href="assets/css/wonseok.css" />
    <link rel="stylesheet" href="assets/css/dain.css" />
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
                    <h1>Web Developer<br />Oh Wonseok<br /></h1>
                    <button type="button"
                      class="cta"
                      onclick="location.href='https://github.com/ows710'"
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
                      src="assets/img/wonseok.png"
                      style="width: 50%; right: -100px"
                      alt="Welcome"
                    />
                  </div>
                  <div class="intro--options">
                    <a href="#0">
                      <h3>Department</h3>
                      <p>Software Engineering<br />Ajou university</p>
                    </a>
                    <a href="#0">
                      <h3>Age</h3>
                      <p>1999.07.10</p>
                    </a>
                    <a href="#0">
                      <h3>Email</h3>
                      <p>ows0710@gmail.com</p>
                    </a>
                  </div>
                </div>
              </li>
              <li class="l-section section">
                <div class="hire">
                  <h2>My Skills</h2>
                  <!-- checkout formspree.io for easy form setup -->

                  <div class="work-request--options">
                    <span class="options-a">
                      <input id="opt-1" type="checkbox" value="slack" />
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
                        SLACK
                      </label>
                      <input id="opt-2" type="checkbox" value="google drive" />
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
                        Google Drive
                      </label>
                      <input id="opt-3" type="checkbox" value="c" />
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
                        C
                      </label>
                    </span>
                    <span class="options-b">
                      <input id="opt-4" type="checkbox" value="java" />
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
                        Java
                      </label>
                      <input id="opt-5" type="checkbox" value="python" />
                      <label for="opt-5">
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
                        Python
                      </label>
                      <input id="opt-6" type="checkbox" value="html,css" />
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
                        HTML/CSS
                      </label>
                    </span>
                    <span class="options-c">
                      <input id="opt-7" type="checkbox" value="javascript" />
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
                        JAVASCRIPT
                      </label>
                      <input id="opt-8" type="checkbox" value="eclipse" />
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
                        Eclipse
                      </label>
                      <input id="opt-9" type="checkbox" value="vscode" />
                      <label for="opt-9">
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
                        Visual Studio Code
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
                            <img src="assets/img/a.png" alt="a" />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="fa-solid fa-play ctrlIcon"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">돌덩이</p>
                          <p class="slider--item-description">하현우(국카스텐)</p>
                          <audio class="slider--item-description song">
                            <source src="assets/mp3/a.mp3" />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-center">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/b.png" alt="b" />
                            <div class="slider--item-image controls">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">
                            흔들리는 꽃들 속에서 네 샴푸향이 느껴질거야
                          </p>
                          <p class="slider--item-description">
                            장범준
                          </p>
                          <audio class="slider--item-description song">
                            <source src="assets/audio/b.mp3" />
                          </audio>
                        </a>
                      </li>
                      <li class="slider--item slider--item-right">
                        <a href="#0">
                          <div class="slider--item-image">
                            <img src="assets/img/c.png" alt="c" />
                            <div class="slider--item-image controls hidden">
                              <div>
                                <i class="ctrlIcon fa-solid fa-play"></i>
                              </div>
                            </div>
                          </div>
                          <p class="slider--item-title">나는 나비</p>
                          <p class="slider--item-description">윤도현</p>
                          <audio class="slider--item-description song">
                            <source src="assets/audio/c.mp3" />
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
                      ISTJ
                      <br />
                    </h2>
                  </div>
                  <div style="margin-top: 35px">
                    <label class="label">
                      I
                      <span> : 혼자 시간을 보내는 것을 선호하고</span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 64%" class="progress ei">
                        <span>66%</span>
                      </div>
                    </div>
                    <label class="label">
                      S
                      <span> : 세부사항에 집중하고 경험을 통해 배우며 </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 65%" class="progress ns">
                        <span>76%</span>
                      </div>
                    </div>
                    <label class="label">
                      T
                      <span style="font-size: 15px">
                        : 논리적이고 체계적으로 문제를 해결합니다
                      </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 60%" class="progress tf">
                        <span>63%</span>
                      </div>
                    </div>
                    <label class="label">
                      J
                      <span style="font-size: 15px">
                        : 계획적이고 구조적인 방식으로 삶을 이끕니다
                      </span>
                    </label>
                    <div class="progress-bar">
                      <div style="width: 61%" class="progress pj">
                        <span>75%</span>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="l-section section">
                <div class="game-container">
                  <h1>JavaScript 개념 정복하기</h1>
                  
                  <div class="status-bar">
                    <div id="timer">⏰ 30</div>
                    <div id="chances">남은 기회: 3회</div>
                  </div>
              
                  <div id="problemContainer"></div>
              
                  <div class="target-wrapper">
                    <div class="drop-zone" ondrop="drop(event, 0)" ondragover="allowDrop(event)"></div>
                    <div class="arrow">➡️</div>
                    <div class="drop-zone" ondrop="drop(event, 1)" ondragover="allowDrop(event)"></div>
                    <div class="arrow">➡️</div>
                    <div class="drop-zone" ondrop="drop(event, 2)" ondragover="allowDrop(event)"></div>
                    <div class="arrow">➡️</div>
                    <div class="drop-zone" ondrop="drop(event, 3)" ondragover="allowDrop(event)"></div>
                  </div>
              
                  <div class="snippet-container" id="snippets" ondrop="dropToSnippets(event)" ondragover="allowDrop(event)"></div>

              
                  <button onclick="checkSolution()">확인</button>
                  <div class="result" id="result"></div>
                  <button id="nextButton" class="next-btn" onclick="nextProblem()">
                    다음 문제로 넘어가기
                  </button>
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
    <script src="assets/js/dnd.js"></script>
  </body>
</html>
