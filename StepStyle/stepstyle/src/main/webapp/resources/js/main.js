var swiper1 = new Swiper(".swiper1", {
  autoplay: true,
  loop: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  pagination: {
    el: ".swiper-pagination",
    type: "bullets",
    clickable: true,
  },
});

var swiper2 = new Swiper(".swiper2", {
  speed:600,
  autoplay: false,
  slidesPerView: 5,
  slidesPerGroup: 5,
  spaceBetween: 40,
  loopFillGroupWithBlank: true,
  allowTouchMove: false, // false�ÿ� ���������� ���� ������ ��ư���θ� �����̵� ������ ����
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  pagination: false,
  observer: true,
});

var swiper3 = new Swiper(".swiper3", {
  speed:600,
  autoplay: false,
  slidesPerView: 5,
  slidesPerGroup: 5,
  spaceBetween: 40,
  loopFillGroupWithBlank: true,
  allowTouchMove: false, // false�ÿ� ���������� ���� ������ ��ư���θ� �����̵� ������ ����
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  pagination: false,
  observer: true,
});
