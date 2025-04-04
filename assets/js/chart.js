const API_KEY = "4e6a7276666d696c38316a50746944";

let data;

let xhr = new XMLHttpRequest();
let url = `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/20250331/4호선`; /* URL */
xhr.open("GET", url);
xhr.onreadystatechange = function () {
  if (this.readyState == xhr.DONE) {
    // <== 정상적으로 준비되었을때
    if (xhr.status == 200 || xhr.status == 201) {
      // <== 호출 상태가 정상적일때

      let txt = JSON.stringify(this.response);
      data = this.response;
      console.log(txt);
      document.querySelector("#responseData").innerHTML = txt;
      console.log(txt.CardSubwayStatsNew.list_total_count);
    }
  }
};
xhr.send("");

console.log(data);
