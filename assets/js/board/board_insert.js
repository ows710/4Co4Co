const text_length = document.querySelector(".text_length span");
const contents = document.querySelector("#contents");
const submit = document.querySelector(".submit");
const path = document.getElementById("contextPath").value;

contents.addEventListener("input", () => {
  if (contents.value.length > 300) {
    contents.value = contents.value.substring(0, 300);
  }
  text_length.innerHTML = contents.value.length;
});

submit.addEventListener("click", () => {
  console.log(path);
  location.href = path + "/board_list.jsp";
});
