const API_KEY = "4e6a7276666d696c38316a50746944";
const API_URL = `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/`;

export const getMarSubway = async () => {
  console.log(API_URL + "20250310/4호선");
  const res = await fetch(
    `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/20250310/4호선`
  );
  const data = await res.json();

  return data;
};

export const getFebSubway = async () => {
  const res = await fetch(
    `http://openapi.seoul.go.kr:8088/${API_KEY}/json/CardSubwayStatsNew/1/26/202502/4호선`
  );
  const data = await res.json();

  return data;
};
