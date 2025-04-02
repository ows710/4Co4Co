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

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./assets/css/board.css" />
  </head>
  <body>
    <div class="container-fluid">
      <div class="board">
        <div class="menu">
          <h2>Q&A</h2>
          <div class="search">
            <input type="text" name="" id="" />
            <button>검색</button>
          </div>
        </div>
        <div class="table">
          <table>
            <thead>
              <tr>
                <th>번호</th>
                <th>작성자</th>
                <th>제목</th>
                <th>일시</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>김철수</td>
                <td>집가고싶다</td>
                <td>20250302</td>
              </tr>
              <tr>
                <td>2</td>
                <td>홍길동</td>
                <td>집가고싶다</td>
                <td>20250302</td>
              </tr>
              <tr>
                <td>3</td>
                <td>유관순</td>
                <td>집가고싶다</td>
                <td>20250302</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="footer">
          <ul class="pagination">
            <li>
              <a href="#" style="margin-right: 5px" class="text-secondary">◀</a>
            </li>
            <li>
              <a href="#" style="margin-right: 5px" class="text-secondary">1</a>
            </li>
            <li>
              <a href="#" style="margin-right: 5px" class="text-secondary">2</a>
            </li>
            <li>
              <a href="#" style="margin-right: 5px" class="text-secondary">▶</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>
