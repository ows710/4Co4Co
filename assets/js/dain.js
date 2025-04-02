/**
 * Description placeholder
 *
 * @type {*}
 */
const progress = document.getElementById("progress"); //노래 재생바
/**
 * Description placeholder
 *
 * @type {*}
 */
const ctrlIconList = Array.from(document.getElementsByClassName("ctrlIcon"));
/**
 * Description placeholder
 *
 * @type {*}
 */
const controlsList = Array.from(document.getElementsByClassName("controls"));
/**
 * Description placeholder
 *
 * @type {*}
 */
const songList = Array.from(document.getElementsByClassName("song"));
/**
 * Description placeholder
 *
 * @type {*}
 */
const sliderPrev = Array.from(document.getElementsByClassName("slider--prev"));
/**
 * Description placeholder
 *
 * @type {*}
 */
const sliderNext = Array.from(document.getElementsByClassName("slider--next"));
/**
 * Description placeholder
 *
 * @type {*}
 */
const img = document.querySelectorAll(".slider--item-image img");
/**
 * Description placeholder
 *
 * @type {*}
 */
const work = document.querySelector(".work");

/**
 * Description placeholder
 *
 * @type {number}
 */
let currentSong = 1;
//각 컨트롤마다 노래재생 멈춤 기능 추가
controlsList.forEach((control) => {
  control.addEventListener("click", () => {
    if (ctrlIconList[currentSong].classList.contains("fa-play")) {
      audioPlay(currentSong);
    } else {
      audioStop(currentSong);
    }
  });
});

//오디오 재생
/**
 * Description placeholder
 *
 * @param {*} song
 */
function audioPlay(song) {
  songList[song].play();
  ctrlIconList[song].classList.add("fa-pause");
  ctrlIconList[song].classList.remove("fa-play");

  img[song].style.animation = "rotate 10s linear infinite";
  console.log(img[song]);
}

//오디오 멈춤
/**
 * Description placeholder
 *
 * @param {*} song
 */
function audioStop(song) {
  songList[song].pause();
  ctrlIconList[song].classList.remove("fa-pause");
  ctrlIconList[song].classList.add("fa-play");
  img[song].style.animationPlayState = "paused";
}

//재생버튼 안보이게
/**
 * Description placeholder
 *
 * @param {*} currentSong
 */
function hidden(currentSong) {
  for (let i = 0; i < controlsList.length; i++) {
    if (currentSong != i) controlsList[i].classList.add("hidden");
    else controlsList[i].classList.remove("hidden");
  }
}

// songList.forEach((song) => {
//   song.addEventListener("timeupdate", () => {
//     // img[currentSong].style.transform = `rotate(${
//     //   songList[currentSong].currentTime * 10
//     // }deg)`;
//   });
// });

//이전버튼 눌렀을 때
sliderPrev.forEach((slider) => {
  slider.addEventListener("click", () => {
    let prevSong = currentSong;

    songList[currentSong].currentTime = 0; //재생시간 초기화
    img[currentSong].style.animation = "none";

    if (currentSong === 0) currentSong = 2;
    else currentSong--;

    if (ctrlIconList[prevSong].classList.contains("fa-play")) {
      audioStop(prevSong);
      audioStop(currentSong);
    } else {
      audioStop(prevSong);
      audioPlay(currentSong);
    }

    hidden(currentSong);
  });
});

//다음버튼 눌렀을 때
sliderNext.forEach((slider) => {
  slider.addEventListener("click", () => {
    let prevSong = currentSong;

    songList[currentSong].currentTime = 0; //재생시간 초기화
    img[currentSong].style.animation = "none";

    if (currentSong === 2) currentSong = 0;
    else currentSong++;

    if (ctrlIconList[prevSong].classList.contains("fa-play")) {
      audioStop(prevSong);
      audioStop(currentSong);
    } else {
      audioStop(prevSong);
      audioPlay(currentSong);
    }

    hidden(currentSong);
  });
});
