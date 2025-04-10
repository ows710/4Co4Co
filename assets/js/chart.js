const API_KEY = "4e6a7276666d696c38316a50746944";
const API_URL = `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/20250210/4호선`;

const getFebSubway = async () => {
  const res = await fetch(API_URL);
  const data = await res.json();

  return data;
};

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
      y: {
        beginAtZero: true,
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
