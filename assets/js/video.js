/**
 * Description placeholder
 *
 * @type {*}
 */
const video = document.getElementById("video"); //비디오
/**
 * Description placeholder
 *
 * @type {*}
 */
const videoPauseButton = document.getElementById("video-pause"); //비디오 재생 버튼
/**
 * Description placeholder
 *
 * @type {*}
 */
const muteButton = document.getElementById("mute"); //음소거 버튼
/**
 * Description placeholder
 *
 * @type {*}
 */
const volumeBar = document.getElementById("volume"); //볼륨조절 바
/**
 * Description placeholder
 *
 * @type {*}
 */
const currentTimeDisplay = document.getElementById("current-time"); //동영상 현재 재생시간
/**
 * Description placeholder
 *
 * @type {*}
 */
const durationDisplay = document.getElementById("duration"); //동영상 전체시간
/**
 * Description placeholder
 *
 * @type {*}
 */
const progressBar = document.getElementById("video-progress"); //동영상 조절 바
/**
 * Description placeholder
 *
 * @type {*}
 */
const fullscreenButton = document.getElementById("fullscreen"); //전체화면버튼
/**
 * Description placeholder
 *
 * @type {*}
 */
const videoPlayAndPauseIcon = videoPauseButton.getElementsByTagName("i")[0]; //비디오 정지 및 재생 아이콘
/**
 * Description placeholder
 *
 * @type {*}
 */
const volumeIcon = muteButton.getElementsByTagName("i")[0];
/**
 * Description placeholder
 *
 * @type {*}
 */
const videoMenu = document.getElementById("video-menu");

//비디오 메타데이터 로드되었을 때
video.addEventListener("loadedmetadata", () => {
  durationDisplay.textContent = formatTime(video.duration);
  progressBar.max = video.duration;
  progressBar.value = 0;
});

//비디오 재생 시간 업데이트
video.addEventListener("timeupdate", () => {
  const progress = (video.currentTime / video.duration) * 100;
  currentTimeDisplay.textContent = formatTime(video.currentTime);
  progressBar.value = video.currentTime;

  progressBar.style.background = `linear-gradient(to right, #244665 ${progress}%, white ${progress}%, white 100%)`;

  if (progressBar.value === progressBar.max) {
    videoPause();
  }
});

video.addEventListener("click", () => {
  if (video.paused) {
    videoPlay();
  } else {
    videoPause();
  }
});
//재생 / 일시정지
videoPauseButton.addEventListener("click", () => {
  if (video.paused) {
    videoPlay();
  } else {
    videoPause();
  }
});

//재생
/** Description placeholder */
function videoPlay() {
  videoPlayAndPauseIcon.classList.add("fa-pause");
  videoPlayAndPauseIcon.classList.remove("fa-play");
  video.play();
}

//일시정지
/** Description placeholder */
function videoPause() {
  videoPlayAndPauseIcon.classList.remove("fa-pause");
  videoPlayAndPauseIcon.classList.add("fa-play");
  video.pause();
}

//음소거 / 해제
muteButton.addEventListener("click", () => {
  video.muted = !video.muted;
  if (video.muted) {
    volumeIcon.classList.remove("fa-volume-off");
    volumeIcon.classList.add("fa-volume-xmark");
  } else {
    volumeIcon.classList.add("fa-volume-off");
    volumeIcon.classList.remove("fa-volume-xmark");
  }
});

//볼륨 조절
volumeBar.addEventListener("input", () => {
  video.volume = volumeBar.value;
});

//진행 바 조절
progressBar.addEventListener("input", () => {
  video.currentTime = progressBar.value;
});

// 전체 화면
fullscreenButton.addEventListener("click", () => {
  if (video.requestFullscreen) {
    video.requestFullscreen();
  } else if (video.webkitRequestFullscreen) {
    video.webkitRequestFullscreen();
  } else if (video.msRequestFullscreen) {
    video.msRequestFullscreen();
  }
});

// 시간 포맷 변환 (초 → MM:SS)
/**
 * Description placeholder
 *
 * @param {*} seconds
 * @returns {string}
 */
function formatTime(seconds) {
  const minutes = Math.floor(seconds / 60);
  const secs = Math.floor(seconds % 60);
  return `${minutes}:${secs < 10 ? "0" : ""}${secs}`;
}
