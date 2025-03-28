const widgets = document.querySelectorAll(".widget");
const dropArea = document.getElementById("dropArea");
const deleteArea = document.getElementById("deleteArea");

widgets.forEach((widget) => {
  widget.addEventListener("dragstart", (e) => {
    e.dataTransfer.setData("text/plain", widget.outerHTML);
    setTimeout(() => widget.classList.add("hidden"), 0);
  });

  widget.addEventListener("dragend", () => {
    widget.classList.remove("hidden");
  });
});

[dropArea, deleteArea].forEach((area) => {
  area.addEventListener("dragover", (e) => {
    e.preventDefault();
    area.classList.add(
      area.id === "deleteArea" ? "delete-hover" : "drop-hover"
    );
  });

  area.addEventListener("dragleave", () => {
    area.classList.remove("drop-hover", "delete-hover");
  });

  area.addEventListener("drop", (e) => {
    e.preventDefault();
    area.classList.remove("drop-hover", "delete-hover");
    const data = e.dataTransfer.getData("text/plain");
    if (area.id === "dropArea") {
      dropArea.innerHTML += data;
    }
  });
});

deleteArea.addEventListener("drop", (e) => {
  e.preventDefault();
  deleteArea.classList.remove("delete-hover");
});
