<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>4CO4CO</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./assets/css/board.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="image/png" href="assets/img/4co4co_icon_2.png">
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
        </div>
        <div class="insert_form">
          <form action="#">
            <input
              type="text"
              class="form-control"
              id="title"
              placeholder="제목을 작성하세요"
              name="title"
            />

            <textarea
              type="text"
              class="form-control"
              id="contents"
              placeholder="내용을 입력하세요"
              name="contents"
            ></textarea>
            <div class="text_length"><span>0</span>/300</div>
          </form>
          <button class="submit">완료</button>
        </div>
      </div>
    </div>
  </body>
  <script src="./assets/js/board/board_insert.js"></script>
</html>
