const Data = JSON.parse(sessionStorage.getItem("data"));
const title = document.querySelector("thead th");
const contents = document.querySelector("tbody tr td");
const path = document.getElementById("contextPath").value;
const boardlistButton = document.querySelector(".cssbuttons-io-button");

title.innerHTML += Data.title;
contents.innerHTML += Data.message;

boardlistButton.addEventListener("click", () => {
  location.href = path + "/board_list.jsp";
});
