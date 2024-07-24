        window.onload = function () {
            const tabBtn = document.querySelectorAll(".section_menu > ul > li"); //버튼 설정
            const tabCont = document.querySelectorAll(".orderBox > .deliveryInfo");   //콘텐츠 설정

            tabCont.forEach(el => el.style.display = "none");   //모든 콘텐츠를 숨김
            tabCont[0].style.display = "block";     //첫 번째 콘텐츠를 보이게 설정

            tabBtn.forEach((tab, index) => {
                tab.addEventListener("click", () => {
                    tabBtn.forEach(tab => tab.classList.remove("on"));  //모든 버튼 클래스 삭제
                    tab.classList.add("on");        //클릭한 버튼만 클래스 추가
                    tabCont.forEach(cont => cont.style.display = "none");   //모든 콘텐츠를 숨기기
                    tabCont[index].style.display = "block";     //클릭한 버튼의 콘텐츠 내용을 보여줌
                });
            });

            const tabRdo = document.querySelectorAll(".deliveryInfo > div > input[type=radio]"); //버튼 설정
            const tabCont2 = document.querySelectorAll(".deliveryInfoTable > table");   //콘텐츠 설정

            tabCont2.forEach(el => el.style.display = "none");   //모든 콘텐츠를 숨김
            tabCont2[0].style.display = "block";     //첫 번째 콘텐츠를 보이게 설정

            tabRdo.forEach((tab, index) => {
                tab.addEventListener("click", () => {
                    tabBtn.forEach(tab => tab.classList.remove("active"));  //모든 버튼 클래스 삭제
                    tab.classList.add("active");        //클릭한 버튼만 클래스 추가
                    tabCont2.forEach(cont => cont.style.display = "none");   //모든 콘텐츠를 숨기기
                    tabCont2[index].style.display = "block";     //클릭한 버튼의 콘텐츠 내용을 보여줌
                });
            });
        };