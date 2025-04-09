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
    <div class="container-fluid">
      <div class="board">
        <div class="menu">
          <h2>Q&A</h2>
          <!-- From Uiverse.io by adamgiebl -->
          <button class="cssbuttons-io-button">
            목록보기
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
        <div class="table contents_table">
          <table>
            <thead>
              <tr>
                <th>제목:&nbsp;&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <tr class="message">
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
        <input
          type="hidden"
          id="contextPath"
          value="${pageContext.request.contextPath}"
        />
        <div class="reply_form">
          <p>댓글작성</p>
          <form action="#">
            <textarea
              type="text"
              class="form-control"
              id="reply"
              placeholder="내용을 입력하세요"
              name="contents"
            ></textarea>
            <button type="submit" class="btn btn-light">완료</button>
          </form>
        </div>
      </div>
    </div>
  </body>
  <script src="./assets/js/board/board_contents.js"></script>
</html>
