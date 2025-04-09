let draggedTask = null;
let currentEditTask = null;

document.addEventListener('DOMContentLoaded', () => {
  loadTasks();
  initDragAndDrop();
});

function addTask(columnId) {
  const task = {
    id: Date.now(),
    text: "새 작업",
    owner: "원석"
  };
  const tasks = getColumnTasks(columnId);
  tasks.push(task);
  saveColumnTasks(columnId, tasks);
  renderBoard();
}

function renderBoard() {
  ['todo', 'doing', 'done'].forEach(columnId => {
    const container = document.getElementById(columnId);
    container.querySelectorAll('.task').forEach(t => t.remove());
    const tasks = getColumnTasks(columnId);
    tasks.forEach(task => {
      const taskEl = document.createElement('div');
      taskEl.className = 'task';
      taskEl.draggable = true;
      taskEl.dataset.id = task.id;
      taskEl.dataset.owner = task.owner;
      taskEl.textContent = `${task.text} (${task.owner})`;
      taskEl.addEventListener('click', () => openModal(task.id, columnId));
      taskEl.addEventListener('dragstart', () => {
        draggedTask = { ...task, from: columnId };
      });
      container.appendChild(taskEl);
    });
  });
}


function getColumnTasks(columnId) {
  return JSON.parse(localStorage.getItem(columnId)) || [];
}

function saveColumnTasks(columnId, tasks) {
  localStorage.setItem(columnId, JSON.stringify(tasks));
}

function initDragAndDrop() {
  document.querySelectorAll('.task-container').forEach(column => {
    column.addEventListener('dragover', e => e.preventDefault());
    column.addEventListener('drop', e => {
      const toColumn = column.id;
      if (draggedTask && draggedTask.from !== toColumn) {
        const fromTasks = getColumnTasks(draggedTask.from).filter(t => t.id !== draggedTask.id);
        const toTasks = getColumnTasks(toColumn);
        toTasks.push(draggedTask);
        saveColumnTasks(draggedTask.from, fromTasks);
        saveColumnTasks(toColumn, toTasks);
        renderBoard();
      }
    });
  });
}

function openModal(taskId, columnId) {
  const tasks = getColumnTasks(columnId);
  const task = tasks.find(t => t.id === taskId);
  if (!task) return;

  currentEditTask = { task, columnId };
  document.getElementById('modalText').value = task.text;
  document.getElementById('modalOwner').value = task.owner;
  document.getElementById('modal').classList.remove('hidden');
}

function saveModal() {
  const { task, columnId } = currentEditTask;
  task.text = document.getElementById('modalText').value;
  task.owner = document.getElementById('modalOwner').value;

  const tasks = getColumnTasks(columnId).map(t => t.id === task.id ? task : t);
  saveColumnTasks(columnId, tasks);
  renderBoard();
  closeModal();
}

function deleteModal() {
  const { task, columnId } = currentEditTask;
  const tasks = getColumnTasks(columnId).filter(t => t.id !== task.id);
  saveColumnTasks(columnId, tasks);
  renderBoard();
  closeModal();
}

function closeModal() {
  document.getElementById('modal').classList.add('hidden');
}

function loadTasks() {
  renderBoard();
}
