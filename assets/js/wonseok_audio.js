document.addEventListener("DOMContentLoaded", function () {
  const audio = document.querySelector(".audio-player");
  if (audio) {
    audio.volume = 0.5;
  }
});
function playAudio(src) {
  var audioPlayer = document.getElementById("audio-player");
  var audioSource = document.getElementById("audio-source");

  audioSource.src = src;
  audioPlayer.load();
  audioPlayer.play();
}

let currentAudio = null; // 현재 재생중인 오디오
let currentIcon = null; // 현재 재생중인 아이콘

function toggleAudio(audioPath, element) {
  const audio = new Audio(audioPath); // 새로운 오디오 객체 생성
  const icon = element.querySelector(".play-icon"); // 클릭한 이미지의 아이콘 선택

  if (currentAudio && currentAudio !== audio) {
    // 다른 오디오가 재생 중이면 멈추기
    currentAudio.pause();
    currentIcon.textContent = "▶"; // 멈춘 아이콘으로 변경
  }

  if (audio.paused) {
    // 오디오가 멈춰있으면 재생
    audio.play();
    icon.textContent = "⏸"; // 아이콘을 멈춤으로 변경
    currentAudio = audio; // 현재 오디오 설정
    currentIcon = icon; // 현재 아이콘 설정
  } else {
    // 오디오가 재생 중이면 멈춤
    audio.pause();
    icon.textContent = "▶"; // 아이콘을 재생 아이콘으로 변경
    currentAudio = null;
    currentIcon = null;
  }
}
