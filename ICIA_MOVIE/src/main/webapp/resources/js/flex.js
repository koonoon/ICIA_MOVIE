const navBarHidden = document.querySelector(".navbar-navi");
const navBarIcon = document.querySelector(".i");
//const navBarIcon = document.getElementById("hidden");
const HIDDEN_CLASSNAME = "hidden";
const navBarLogo = document.querySelector(".bar :first-child");
const moblieMenu = document.querySelector(".mobile-menu");
const mainNav = document.querySelector(".bar");
const nvLogin = document.querySelector(".navbar-login");
const content = document.querySelector(".content");
const label = document.querySelector("#label");
const mNav = document.createElement("nav");
const mDiv = document.createElement("div");
const mUl = document.createElement("ul");
//console.log(document.body.clientWidth);

const burger = document.querySelector(".burger");

const userMenu = document.querySelector("#user-menu");

const burgerButton = (elem) =>{

    elem.addEventListener("click",()=>{
        elem.classList.toggle("toggle");
    });
}


burgerButton(burger);

function pageWidthCheck(){
    //console.log(document.body.clientWidth);
    if(document.body.clientWidth <= 768){
        //navBarHidden.id = HIDDEN_CLASSNAME;

        navBarIcon.id = "";
        navBarLogo.id = HIDDEN_CLASSNAME;
        moblieMenu.id = "";
        moblieMenu.setAttribute("role","checkbox");

    }else{
        navBarHidden.id = "";
        navBarIcon.id = "hidden";
        navBarLogo.id = "";
        moblieMenu.id = HIDDEN_CLASSNAME;
        mainNav.insertBefore(navBarHidden,nvLogin);
        //mNav.id = HIDDEN_CLASSNAME;
        if(!!burger.classList[1]){
            $(".burger").trigger("click");
            closeBtn();
        }

        if(content.id === HIDDEN_CLASSNAME){

            // burger.classList.toggle("toggle");
            $(".burger").trigger("click"); // 트리거 처리로 클릭하지 않아도 클릭 한 것처럼 처리!
            closeBtn();
            //mNav.id = HIDDEN_CLASSNAME;
            mainNav.insertBefore(navBarHidden,nvLogin);
        }



    }
}

pageWidthCheck();
window.addEventListener("resize",pageWidthCheck);


label.addEventListener("click", mobileMenuPopUp);

function mobileMenuPopUp(){
    if(!!burger.classList[1]){

        moblieMenu.appendChild(navBarHidden);
        console.log("라벨눌림");


        navBarHidden.id = "";
//        content.id = HIDDEN_CLASSNAME;
        mainNav.style.backgroundColor = "black";

    }else {
        console.log("삭제해");
        closeBtn();

    }

}

function closeBtn(){

        mainNav.style.backgroundColor = "#313132";
        content.id = "";

}


//mobileNaviText();
//function mobileNaviText(){
//  const transitionEnd = 'transitionend webkitTransitionEnd oTransitionEnd otransitionend';
//    $(".navbar-navi").one(transitionEnd, function(){
//        console.log( this.id + "애니메이션 완료" );
//    });
//
//  $('#hamburger:checked ~ .navbar-navi').click(function(){
//    console.log("클릭");
//    $(navBarHidden).css({
//        "transition-delay": "1s",
//        "height": "100vh",
//        "background-color": "pink",
//
//    });
//
//  });
//
//
//}

userMenu.addEventListener("click",userInfoPopUp);
function userInfoPopUp(){
//    userMenu.setAttribute("role","checkbox");
    console.log("클릭");


}
