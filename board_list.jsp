<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>4CO4CO_BOARD</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./assets/css/board.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
    <input
      type="hidden"
      id="contextPath"
      value="${pageContext.request.contextPath}"
    />
    <div class="container-fluid">
      <div class="board">
        <div class="menu">
          <h2>Q&A</h2>
          <!-- From Uiverse.io by adamgiebl -->
          <button class="cssbuttons-io-button">
            글쓰기
            <div class="icon">
              <svg
                height="24"
                width="24"
                viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path d="M0 0h24v24H0z" fill="none"></path>
                <path
                  d="M16.172 11l-5.364-5.364 1.414-1.414L20 12l-7.778 7.778-1.414-1.414L16.172 13H4v-2z"
                  fill="currentColor"
                ></path>
              </svg>
            </div>
          </button>
        </div>
        <div class="table">
          <table>
            <thead>
              <tr>
                <th class="none">번호</th>
                <th class="none">작성자</th>
                <th>제목</th>
                <th>일시</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
        <div class="footer">
          <ul class="pagination">
            <li>
              <button class="text-secondary prev-page-button">◀</button>
            </li>
            <li>
              <button class="text-secondary next-page-button">▶</button>
            </li>
          </ul>
          <div class="search">
            <select name="search-type" id="search-type">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="name">작성자</option>
            </select>
            <input type="text" name="" id="search" />
            <button class="search_button">검색</button>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="./assets/js/board/board_list.js"></script>
</html>
