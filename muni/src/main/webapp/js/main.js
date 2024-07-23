window.onload = function () {
    const tabBtn = document.querySelectorAll(".main_product_inner > ul > li > button"); //버튼 설정
    const tabCont = document.querySelectorAll(".content_list > div");   //콘텐츠 설정

    tabCont.forEach(el => el.style.display = "none");   //모든 콘텐츠를 숨김
    tabCont[0].style.display = "block";     //첫 번째 콘텐츠를 보이게 설정

    tabBtn.forEach((tab, index) => {
        tab.addEventListener("click", () => {
            tabBtn.forEach(tab => tab.classList.remove("active"));  //모든 버튼 클래스 삭제
            tab.classList.add("active");        //클릭한 버튼만 클래스 추가

            tabCont.forEach(cont => cont.style.display = "none");   //모든 콘텐츠를 숨기
            tabCont[index].style.display = "block";     //클릭한 버튼의 콘텐츠 내용을 보여줌
        });
    });
};