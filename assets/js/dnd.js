const problems = [
  {
    question: "변수를 선언하고 값을 할당하는 기본 흐름",
    steps: [
      "변수 선언 (`let`)",
      "값 할당 (`=`)",
      "변수 사용 (출력 등)",
      "코드 실행"
    ],
    correctOrder: [
      "변수 선언 (`let`)",
      "값 할당 (`=`)",
      "변수 사용 (출력 등)",
      "코드 실행"
    ]
  },
  {
    question: "자바스크립트에서 콘솔 출력하는 방법",
    steps: [
      "콘솔 객체 접근 (`console`)",
      "메서드 지정 (`log`)",
      "출력할 값 작성",
      "실행"
    ],
    correctOrder: [
      "콘솔 객체 접근 (`console`)",
      "메서드 지정 (`log`)",
      "출력할 값 작성",
      "실행"
    ]
  },
  {
    question: "기본 이벤트 처리 흐름",
    steps: [
      "요소 선택",
      "이벤트 리스너 추가",
      "함수 정의",
      "이벤트 발생 시 실행"
    ],
    correctOrder: [
      "요소 선택",
      "이벤트 리스너 추가",
      "함수 정의",
      "이벤트 발생 시 실행"
    ]
  },
  {
    question: "조건문 if의 실행 흐름",
    steps: [
      "조건 비교",
      "조건이 true인지 확인",
      "코드 실행",
      "if 문 종료"
    ],
    correctOrder: [
      "조건 비교",
      "조건이 true인지 확인",
      "코드 실행",
      "if 문 종료"
    ]
  },
  {
    question: "배열에 요소를 추가하고 출력하는 순서",
    steps: [
      "배열 선언",
      "요소 추가 (push)",
      "반복문 작성",
      "콘솔에 출력"
    ],
    correctOrder: [
      "배열 선언",
      "요소 추가 (push)",
      "반복문 작성",
      "콘솔에 출력"
    ]
  }
];


let currentProblemIndex = 0;
let draggedItem = null;
let chances = 3;
let timer = 60;
let interval = null;

function loadProblem(index) {
  const { question, steps } = problems[index];
  document.getElementById("problemContainer").innerHTML = `<h3>${question}</h3>`;

  const snippetContainer = document.getElementById("snippets");
  snippetContainer.innerHTML = steps.map(step =>
    `<div class="snippet" draggable="true">${step}</div>`
  ).join("");

  document.querySelectorAll(".snippet").forEach(snippet => {
    snippet.addEventListener("dragstart", e => {
      draggedItem = e.target;
      e.target.classList.add("dragging");
    });
    snippet.addEventListener("dragend", e => {
      e.target.classList.remove("dragging");
    });
  });

  document.querySelectorAll(".drop-zone").forEach(zone => {
    zone.innerHTML = "";
  });

  document.getElementById("result").textContent = "";
  document.getElementById("nextButton").disabled = true;

  // 타이머 초기화
  clearInterval(interval);
  timer = 30;
  document.getElementById("timer").textContent = `⏰ ${timer}`;
  interval = setInterval(() => {
    timer--;
    document.getElementById("timer").textContent = `⏰ ${timer}`;
    if (timer <= 0) {
      clearInterval(interval);
      checkSolution();
    }
  }, 1000);
}

function allowDrop(e) {
  e.preventDefault();
}

function drop(e, index) {
  e.preventDefault();
  const zones = document.querySelectorAll(".drop-zone");

  if (!draggedItem) return;

  const targetZone = zones[index];
  const existing = targetZone.firstChild;

  if (!existing) {
    targetZone.appendChild(draggedItem);
  } else {
    const originZone = draggedItem.parentElement;

    targetZone.replaceChild(draggedItem, existing);

    if (originZone.classList.contains("drop-zone")) {
      originZone.appendChild(existing);
    } else {
      document.getElementById("snippets").appendChild(existing);
    }
  }
}

function dropToSnippets(e) {
  e.preventDefault();
  if (draggedItem) {
    document.getElementById("snippets").appendChild(draggedItem);
  }
}

function checkSolution() {
  const zones = document.querySelectorAll(".drop-zone");
  const userOrder = Array.from(zones).map(zone => zone.innerText.trim());
  const correct = problems[currentProblemIndex].correctOrder;

  if (JSON.stringify(userOrder) === JSON.stringify(correct)) {
    document.getElementById("result").textContent = "🎉 정답입니다!";
    document.getElementById("result").style.color = "green";
    document.getElementById("nextButton").disabled = false;
    clearInterval(interval);
  } else {
    if (chances > 0) chances--;
    document.getElementById("chances").textContent = `남은 기회: ${chances}회`;

    if (chances === 0) {
      document.getElementById("result").textContent = "😢 기회를 모두 소진했습니다. 정답을 맞혀야 다음 문제로 넘어갈 수 있습니다.";
    } else {
      document.getElementById("result").textContent = "❌ 오답입니다. 다시 시도해보세요!";
    }

    document.getElementById("result").style.color = "red";
    clearInterval(interval); // 틀려도 타이머 멈추도록 설정
  }
}

function nextProblem() {
  currentProblemIndex++;
  chances = 3;
  document.getElementById("chances").textContent = `남은 기회: ${chances}회`;

  if (currentProblemIndex < problems.length) {
    loadProblem(currentProblemIndex);
  } else {

    clearInterval(interval);
    document.getElementById("problemContainer").innerHTML = `
      <div style="text-align: center;">
        <h1>🎉 모든 문제를 풀었습니다!<br>축하드립니다!</h1>
      </div>
    `;

    document.getElementById("snippets").innerHTML = "";
    document.querySelector(".target-wrapper").style.display = "none";
    document.getElementById("result").textContent = "";
    document.getElementById("nextButton").style.display = "none";

    document.getElementById("timer").style.display = "none";
    document.getElementById("chances").style.display = "none";

    const checkBtn = document.querySelector("button[onclick='checkSolution()']");
    checkBtn.textContent = "홈으로 돌아가기";
    checkBtn.onclick = () => {
      window.location.href = "/4Co4Co/wonseok.jsp";
    };
  }
}


window.onload = () => loadProblem(currentProblemIndex);
