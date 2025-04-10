const tr = document.querySelectorAll(".table tbody .contents");
const path = document.getElementById("contextPath").value;
const insert_button = document.querySelector(".cssbuttons-io-button");
const page = document.querySelector(".pagination");
const pageNumberButton = document.querySelector("page-number-button");
const prevButton = document.querySelector(".prev-page-button");
const nextButton = document.querySelector(".next-page-button");
let currentPage = 0;

const loadBoardData = async () => {
  try {
    const response = await fetch(
      "https://gist.githubusercontent.com/dorazi0423/eda36f00b27ed2dfdc9342dba1a5c352/raw/d77662dd572448df3c9617cff3c04de97d7ea4f3/4Co4Co"
    );
    const data = await response.json();
    const tbody = document.querySelector(".table tbody");
    const page = document.querySelector(".pagination");
    let currentPage = 0;
    let resultData = [...data]; // 처음에는 전체 데이터를 사용
    // 검색 처리
    const search_input = document.querySelector(".search input");
    const search_button = document.querySelector(".search button");
    const search_checkBox = document.querySelector(".search select");

    // tr 태그 추가하는 함수
    const input = (start, end, dataToDisplay) => {
      tbody.innerHTML = "";
      for (let i = start - 1; i >= end; i--) {
        if (i >= dataToDisplay.length) break;
        const tr = document.createElement("tr");
        tr.className = "contents";
        tr.innerHTML = `
          <td class="none">${dataToDisplay[i].id}</td>
          <td class="none">${dataToDisplay[i].name}</td>
          <td>${dataToDisplay[i].title}</td>
          <td>${dataToDisplay[i].date}</td>
        `;

        tbody.appendChild(tr);

        tr.addEventListener("click", () => {
          sessionStorage.setItem("data", JSON.stringify(dataToDisplay[i]));
          location.href = path + "/board_contents.jsp";
        });
      }
    };

    // 페이지 로드시키는 함수
    const pageLoad = (i, dataToDisplay) => {
      let start = dataToDisplay.length - i * 10;
      let end = start - 10 < 0 ? 0 : start - 10;
      input(start, end, dataToDisplay);
      currentPage = i;
    };

    // 페이지 전환 버튼 만들기
    const updatePagination = (dataToDisplay) => {
      // 페이지 버튼 초기화

      const removeLi = page.querySelectorAll(".page-number-button");

      removeLi.forEach((value) => value.remove());

      const pageTotal = Math.ceil(dataToDisplay.length / 10);

      // 페이지 번호 생성
      for (let i = 0; i < pageTotal; i++) {
        const li = document.createElement("li");
        li.className = "page-number-button";
        li.innerHTML = `<button class="text-secondary ">${i + 1}</button>`;

        if (i === 0) li.classList.add("current-page");

        li.addEventListener("click", () => {
          const nowPage = document.querySelector(".current-page");
          nowPage.classList.remove("current-page");
          li.classList.add("current-page");
          currentPage = i;
          pageLoad(i, dataToDisplay);
        });

        page.insertBefore(li, page.children[i + 1]);
      }

      // 첫 페이지 로드
      pageLoad(0, dataToDisplay);
    };

    const search = () => {
      let filteredData = [];

      if (search_checkBox.value === "all") {
        // 전체 검색
        filteredData = data.filter((value) => {
          return (
            value.title.includes(search_input.value) ||
            value.name.includes(search_input.value)
          );
        });
      } else if (search_checkBox.value === "title") {
        // 제목으로 검색
        filteredData = data.filter((value) => {
          return value.title.includes(search_input.value);
        });
      } else {
        // 작성자로 검색
        filteredData = data.filter((value) => {
          return value.name.includes(search_input.value);
        });
      }

      // 검색된 데이터로 페이지네이션 업데이트
      resultData = filteredData;
      updatePagination(resultData);
    };

    //검색 버튼 눌렀을 때
    search_button.addEventListener("click", () => {
      search();
      history.pushState(
        { isSearch: true },
        "",
        "?search=" + search_input.value
      );
    });

    //엔터 눌렀을 때 검색하기
    search_input.addEventListener("keydown", () => {
      if (event.key === "Enter") {
        search();
        history.pushState(
          { isSearch: true },
          "",
          "?search=" + search_input.value
        );
      }
    });

    window.addEventListener("popstate", (event) => {
      if (!event.state || !event.state.isSearch) {
        search_input.value = "";
        resultData = [...data];
        updatePagination(resultData);
      }
    });

    // 처음 로드 시, 전체 데이터로 페이지네이션 초기화
    updatePagination(resultData);

    // 왼쪽 버튼 눌렀을 때
    prevButton.addEventListener("click", () => {
      if (--currentPage >= 0) {
        const nowPage = document.querySelector(".current-page");
        const nextPage = document.querySelectorAll("li")[currentPage + 1];
        nowPage.classList.remove("current-page");
        nextPage.classList.add("current-page");
        pageLoad(currentPage, resultData);
      } else {
        currentPage = 0;
      }
    });

    // 오른쪽 버튼 눌렀을 때
    nextButton.addEventListener("click", () => {
      if (++currentPage < Math.ceil(resultData.length / 10)) {
        const nowPage = document.querySelector(".current-page");
        const nextPage = document.querySelectorAll("li")[currentPage + 1];
        nowPage.classList.remove("current-page");
        nextPage.classList.add("current-page");
        pageLoad(currentPage, resultData);
      } else {
        currentPage = Math.ceil(resultData.length / 10) - 1;
      }
    });
  } catch (error) {
    console.error("오류발생:", error);
  }
};

// 페이지가 로드될 때 데이터 불러오기
window.onload = loadBoardData;

//글쓰기 버튼 누르면 글쓰기 페이지로 이동
insert_button.addEventListener("click", () => {
  location.href = path + "/board_insert.jsp";
});
