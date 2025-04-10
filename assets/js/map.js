let isSettingDestination = false;
let customOverlay = new kakao.maps.CustomOverlay({
  map: null,
  position: null,
  content: null,
  yAnchor: 1,
});

let currentPolyline = null;
let startLatLng = null;

window.closeOverlay = function () {
  if (customOverlay) {
    customOverlay.setMap(null);
  }
};

document.addEventListener("DOMContentLoaded", function () {
  const container = document.getElementById("map");
  const options = {
    center: new kakao.maps.LatLng(37.583883601891, 126.9999880311),
    level: 3,
  };

  if (!container) return;

  const map = new kakao.maps.Map(container, options);

  // 출발지 마커
  const initialPosition = map.getCenter();
  startLatLng = initialPosition;

  const marker = new kakao.maps.Marker({
    position: initialPosition,
    map: map,
  });

  const ps = new kakao.maps.services.Places(map);
  const markers = { CE7: [], FD6: [] };

  // ✅ 커스텀 마커 이미지 설정
  const markerImageSrc = {
    CE7: "https://cdn-icons-png.flaticon.com/512/685/685352.png", // 카페
    FD6: "https://cdn-icons-png.flaticon.com/512/3595/3595455.png", // 음식점
  };

  window.toggleCategory = function (category) {
    // 이미 마커가 있다면 제거
    if (markers[category].length > 0) {
      markers[category].forEach((m) => m.setMap(null));
      markers[category] = [];
    } else {
      // 새로 검색
      ps.categorySearch(
        category,
        function (data, status) {
          if (status === kakao.maps.services.Status.OK) {
            data.forEach((place) => {
              // ✅ 커스텀 마커 이미지 생성
              const imageSize = new kakao.maps.Size(36, 36);
              const markerImage = new kakao.maps.MarkerImage(markerImageSrc[category], imageSize);

              const marker = new kakao.maps.Marker({
                position: new kakao.maps.LatLng(place.y, place.x),
                map: map,
                image: markerImage,
              });

              // 클릭 이벤트
              kakao.maps.event.addListener(marker, "click", function () {
                const name = place.place_name || "이름 없음";
                const address = place.road_address_name || place.address_name || "주소 정보 없음";
                const phone = place.phone ? "전화: " + place.phone : "";
                const url = place.place_url;

                const content = document.createElement("div");
                content.className = "custom-infowindow";
                content.innerHTML = `
                  <div class="infowindow-header">
                    <button class="close-btn">×</button>
                  </div>
                  <div class="infowindow-body">
                    <strong>${name}</strong><br/>
                    ${address}<br/>
                    ${phone ? phone + "<br/>" : ""}
                    <a href="${url}" target="_blank">상세보기</a>
                  </div>
                `;
                content.querySelector(".close-btn").addEventListener("click", () => {
                  customOverlay.setMap(null);
                });

                customOverlay.setContent(content);
                customOverlay.setPosition(marker.getPosition());
                customOverlay.setMap(map);

                // 도착지 설정 모드일 때 도보 경로 요청
                if (isSettingDestination) {
                  isSettingDestination = false;
                  getWalkingRoute(startLatLng, new kakao.maps.LatLng(place.y, place.x), map);
                }
              });

              markers[category].push(marker);
            });
          }
        },
        { useMapBounds: true }
      );
    }
  };

  // "도착지 설정" 버튼
  document.getElementById("set-destination-btn").addEventListener("click", () => {
    isSettingDestination = true;
    alert("도착지 마커를 클릭하세요!");
  });
});

// ✅ Kakao REST API로 도보 경로 요청
function getWalkingRoute(origin, destination, map) {
  const url = `https://apis-navi.kakaomobility.com/v1/directions?origin=${origin.getLng()},${origin.getLat()}&destination=${destination.getLng()},${destination.getLat()}&priority=RECOMMEND`;

  fetch(url, {
    method: "GET",
    headers: {
      Authorization: "KakaoAK 8f3f4fbbdc2ee96320e80ce1576e7b63", // ← 본인 키로 교체 필요
    },
  })
    .then((res) => res.json())
    .then((data) => {
      const route = data.routes?.[0];
      if (!route) {
        alert("경로를 찾을 수 없습니다.");
        return;
      }

      const path = route.sections[0].roads.flatMap((road) =>
        road.vertexes.reduce((acc, val, i, arr) => {
          if (i % 2 === 0) acc.push(new kakao.maps.LatLng(arr[i + 1], arr[i]));
          return acc;
        }, [])
      );

      if (currentPolyline) {
        currentPolyline.setMap(null);
      }

      currentPolyline = new kakao.maps.Polyline({
        path,
        strokeWeight: 5,
        strokeColor: "#FF6600",
        strokeOpacity: 0.8,
        strokeStyle: "solid",
      });

      currentPolyline.setMap(map);
    })
    .catch((err) => {
      console.error("도보 경로 요청 실패:", err);
      alert("경로 요청에 실패했습니다.");
    });
}
