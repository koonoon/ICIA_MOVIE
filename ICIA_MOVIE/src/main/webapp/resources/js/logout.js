const logout = document.querySelector("#logout");

//
//
//function logOut(name){
//
//    $.ajax({ //컨트롤러 통신
//           url: 'logout/session',
//           type:'post',
//           dataType:'json', //dataType서버에서 가져올 때 type을 정함 ContentType은 서버로 보낼때 타입을 정함
//           success:function(data){
//               console.log(data.loginUser);
//               console.log(data.loginTrue);
//           },
//              error:function(){
//                   console.log("에러");
//             }
//
//        })
//        let date = new Date();
//        date.setDate(date.getDate() - 100);
//        let cookie = `Name=JSESSIONID;Expires=${date.toUTCString()}`
//        document.cookie = cookie;
//        let date = new Date();
//        date.setDate(date.getDate() - 100);
//
//        console.log("쿠키이름"+name);
////        let Cookie = `${name}=;Expires=${date.toUTCString()}`;
//        let Cookie = name+'=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
//        console.log(Cookie);
//        document.cookie = Cookie;
//        console.log(document.cookie);
//    console.log(sessionStorage.getItem(login));
//
//        sessionStorage.clear();
//}
//
//
//logout.addEventListener("click",logOut("JSESSIONID"));
//
//
