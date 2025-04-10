const API_KEY = "4e6a7276666d696c38316a50746944";
const API_URL = `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/`;

const getFebSubway = async () => {
  const date = document.getElementById("date").value.split("-").join("");
  let line = document.getElementById("line");
  let lineNum = line.options[line.selectedIndex].label;

  const res = await fetch(API_URL + `${date}/${lineNum}`);
  const data = await res.json();

  return data;
};

const makeChart = (labels, on, off) => {
  let chartStatus = Chart.getChart("myChart");
  if (chartStatus !== undefined) {
    chartStatus.destroy();
  }

  const ctx = document.getElementById("myChart");

  new Chart(ctx, {
    type: "bar",
    data: {
      labels: labels,
      datasets: [
        {
          label: "승차",
          data: on,
          borderWidth: 1,
        },
        {
          label: "하차",
          data: off,
          borderWidth: 1,
        },
      ],
    },
    options: {
      scales: {
        x: {
          ticks: {
            color: "#ccc",
          },
        },
        y: {
          beginAtZero: true,
          ticks: {
            color: "#ccc",
          },
        },
      },
      responsive: true,
      plugins: {
        legend: {
          position: "top",
        },
      },
    },
  });
};

document.getElementById("search").addEventListener("click", async () => {
  const result = await getFebSubway();

  const graphInfo = [];

  for (const g of result.CardSubwayStatsNew.row) {
    graphInfo.push({
      name: g.SBWY_STNS_NM,
      off: g.GTOFF_TNOPE,
      on: g.GTON_TNOPE,
    });
  }

  const labels = [];
  const off = [];
  const on = [];
  graphInfo.filter((info) => {
    labels.push(info.name);
    off.push(info.off);
    on.push(info.on);
  });

  makeChart(labels, on, off);
});
