$(document).ready(function () {
  // 왼쪽 메뉴 호버시 작동하는 스크립트
  $(".ctg").hover(
    function () {
      $(this).find(".sub_cate01").css("display", "block");
    },
    function () {
      $(this).find(".sub_cate01").css("display", "none");
    }
  );
  $(".ctg2").hover(
    function () {
      $(this).find(".sub_cate01").css("display", "block");
    },
    function () {
      $(this).find(".sub_cate01").css("display", "none");
    }
  );
  $(".top").hover(
    function () {
      $(this).find(".sub_cate02").css("display", "block");
    },
    function () {
      $(this).find(".sub_cate02").css("display", "none");
    }
  );
  $(".sub_cate01 li").hover(
    function () {
      $(this).find(".sub_cate02").css("display", "block");
      $(this).find(".sub_cate02").find(".noChild3").css("display", "block");
    },
    function () {
      $(this).find(".sub_cate02").css("display", "none");
      $(this).find(".sub_cate02").find(".noChild3").css("display", "none");
    }
  );
//   Customer Center 버튼 이벤트
  const button = document.getElementsByClassName("title")[0];

  button.addEventListener("click", function () {
    document.getElementsByClassName("categoryList")[0].classList.toggle("on");
  });

//   우측상단 고객센터 버튼 이벤트
  const button2 = document.getElementsByClassName("service_center_var")[0];

  button2.addEventListener("click", function () {
    document
      .getElementsByClassName("service_center_board")[0]
      .classList.toggle("on");
  });
// 상단 배너 닫기 이벤트
  const button3 = document.getElementsByClassName("icoClose")[0];

  button3.addEventListener("click", function () {
    const button4 = document
      .getElementsByClassName("top_banner_box")[0]
      .classList.toggle("on");
  });
// 왼쪽 메뉴 열기 이벤트
  const button5 = document.getElementById("trigger");

  button5.addEventListener("click", function () {
    const top2 = document
      .getElementsByClassName("menuBox_on")[0]
      .classList.toggle("off");
    button5.classList.toggle("off");
  });


//   헤더 스크롤 이벤트
  let lastScroll = 0;
  window.addEventListener("scroll", function () {

    const layoutElement = document.getElementsByClassName("layout")[0];
    let currentScroll = window.scrollY;
    if (layoutElement) {
      if (currentScroll > lastScroll) {
        layoutElement.classList.add("fixed");
      } else {
        layoutElement.classList.remove("fixed");
      }
    }
    lastScroll = currentScroll;
  });
});
