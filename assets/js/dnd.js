/**
 * Description placeholder
 *
 * @type {{}}
 */
const problems = [
  {
    question: "자바스크립트 코드 실행 과정 (호이스팅 포함)",
    steps: [
      "초기화 단계 (var 변수 초기화, 함수 선언 할당)",
      "실행 컨텍스트 생성 (글로벌/함수)",
      "함수 실행 (코드가 실제로 실행됨)",
      "변수 선언 (변수 이름은 등록되지만 값은 할당되지 않음)",
    ],
    correctOrder: [
      "실행 컨텍스트 생성 (글로벌/함수)",
      "변수 선언 (변수 이름은 등록되지만 값은 할당되지 않음)",
      "초기화 단계 (var 변수 초기화, 함수 선언 할당)",
      "함수 실행 (코드가 실제로 실행됨)",
    ],
  },
  {
    question: "이벤트 루프 (Event Loop) 동작 과정",
    steps: [
      "마이크로태스크 큐 처리 (Promises, MutationObserver 등)",
      "태스크 큐 처리 (setTimeout, DOM 이벤트 등)",
      "Call Stack이 비워질 때까지 실행",
      "렌더링 (브라우저가 화면을 업데이트)",
    ],
    correctOrder: [
      "Call Stack이 비워질 때까지 실행",
      "마이크로태스크 큐 처리 (Promises, MutationObserver 등)",
      "렌더링 (브라우저가 화면을 업데이트)",
      "태스크 큐 처리 (setTimeout, DOM 이벤트 등)",
    ],
  },
  {
    question: "비동기 코드 실행 과정 (콜백, 프로미스, async/await)",
    steps: [
      "콜백 함수는 다른 함수의 인자로 전달되어 실행을 지연시킨다",
      "프로미스는 비동기 작업의 완료 또는 실패를 나타내는 객체",
      "async 함수는 항상 프로미스를 반환하며, await는 프로미스가 처리될 때까지 기다린다",
      "비동기 작업이 끝나면 결과가 콜백 또는 프로미스를 통해 반환",
    ],
    correctOrder: [
      "콜백 함수는 다른 함수의 인자로 전달되어 실행을 지연시킨다",
      "프로미스는 비동기 작업의 완료 또는 실패를 나타내는 객체",
      "비동기 작업이 끝나면 결과가 콜백 또는 프로미스를 통해 반환",
      "async 함수는 항상 프로미스를 반환하며, await는 프로미스가 처리될 때까지 기다린다",
    ],
  },
  {
    question: "클로저(Closure) 동작 과정",
    steps: [
      "외부 함수 실행 후, 내부 함수가 외부 함수의 변수에 접근 가능",
      "내부 함수가 외부 함수의 변수에 접근하려면 해당 변수를 참조",
      "클로저는 함수가 선언될 당시의 스코프(환경)를 기억",
      "내부 함수가 외부 함수의 스코프를 참조하면서 클로저가 형성됨",
    ],
    correctOrder: [
      "내부 함수가 외부 함수의 변수에 접근하려면 해당 변수를 참조",
      "클로저는 함수가 선언될 당시의 스코프(환경)를 기억",
      "내부 함수가 외부 함수의 스코프를 참조하면서 클로저가 형성됨",
      "외부 함수 실행 후, 내부 함수가 외부 함수의 변수에 접근 가능",
    ],
  },
  {
    question: "this 키워드의 동작",
    steps: [
      "일반 함수 호출 시, this는 전역 객체(window 또는 global)",
      "객체의 메서드 내에서, this는 그 객체를 참조",
      "화살표 함수 내에서, this는 상위 스코프의 this를 참조",
      "이벤트 핸들러 내에서, this는 이벤트를 발생시킨 DOM 요소",
    ],
    correctOrder: [
      "일반 함수 호출 시, this는 전역 객체(window 또는 global)",
      "객체의 메서드 내에서, this는 그 객체를 참조",
      "이벤트 핸들러 내에서, this는 이벤트를 발생시킨 DOM 요소",
      "화살표 함수 내에서, this는 상위 스코프의 this를 참조",
    ],
  },
];

/**
 * Description placeholder
 *
 * @type {number}
 */
let currentProblemIndex = 0;
/**
 * Description placeholder
 *
 * @type {*}
 */
let draggedItem = null;

function loadProblem(problemIndex) {
  const problem = problems[problemIndex];
  const problemContainer = document.getElementById("problemContainer");

  problemContainer.innerHTML = `
    <h3>${problem.question}</h3>
    <div class="snippets">
      ${problem.steps
        .map(
          (snippet) => `<div class="snippet" draggable="true">${snippet}</div>`
        )
        .join("")}
    </div>
    <div class="target-area" id="targetArea" ondrop="drop(event)" ondragover="allowDrop(event)">
      <p>여기에 순서대로 드래그해서 배치하세요.</p>
    </div>
  `;

  document.querySelectorAll(".snippet").forEach((item) => {
    item.addEventListener("dragstart", (e) => {
      draggedItem = e.target;
      e.target.classList.add("dragging");
    });

    item.addEventListener("dragend", () => {
      draggedItem.classList.remove("dragging");
      draggedItem = null;
    });
  });

  document.getElementById("result").innerText = "";
  document.getElementById("nextButton").disabled = true;
}

/**
 * Description placeholder
 *
 * @param {*} event
 */
function allowDrop(event) {
  event.preventDefault();
}

/**
 * Description placeholder
 *
 * @param {*} event
 */
function drop(event) {
  event.preventDefault();
  if (draggedItem && event.target.classList.contains("target-area")) {
    event.target.appendChild(draggedItem);
  }
}

/** Description placeholder */
function checkSolution() {
  const targetArea = document.getElementById("targetArea");

  const userSolution = Array.from(targetArea.children)
    .map((child) => child.innerText.trim())
    .filter((text) => text !== "여기에 순서대로 드래그해서 배치하세요.");

  const correctOrder = problems[currentProblemIndex].correctOrder;

  if (JSON.stringify(userSolution) === JSON.stringify(correctOrder)) {
    document.getElementById("result").innerText = "정답입니다!";
    document.getElementById("result").style.color = "green";
    document.getElementById("nextButton").disabled = false;
  } else {
    document.getElementById("result").innerText = "다시 시도해 보세요!";
    document.getElementById("result").style.color = "red";
  }
}

/** Description placeholder */
function nextProblem() {
  currentProblemIndex++;

  if (currentProblemIndex < problems.length) {
    loadProblem(currentProblemIndex);
  } else {
    document.getElementById("result").innerText = "모든 문제를 해결했습니다!";
    document.getElementById("nextButton").disabled = true;
  }
}

loadProblem(currentProblemIndex);
