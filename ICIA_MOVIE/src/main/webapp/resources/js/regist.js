const loginBtn = document.querySelector(".navbar-login");

const content = document.querySelector(".regist-frame");
const idText = document.querySelector("#user-id");
const checkId = document.querySelector("#check-id");
const checkPassword = document.querySelector("#password1");
const checkPassword2 = document.querySelector("#password2");
const emailText = document.querySelector("#user-email");
const checkEmail = document.querySelector("#check-email");
const registButton = document.querySelector("#regist-button");
const controllerValue = document.querySelector(".controller-value");


const modal = document.createElement("div");
const messageBox = document.createElement("div");
const messageBtn = document.createElement("button");
const message = document.createElement("span");

const userId = "${id}";
let validCheckId = false;
let validCheckEmail = false;


function popUpMessage(){

	
	modal.className = "modal2";
	messageBox.id = "message-box";
	messageBtn.id = "popup-button";
	window.scrollTo(0,0);
	//messageBtn.setAttribute("value","확인");
	messageBtn.innerText = "확인";


	content.prepend(modal);
	modal.appendChild(messageBox);
	messageBox.appendChild(message);
	messageBox.appendChild(messageBtn);
	messageBtn.addEventListener("click",()=>modal.remove());
}



function idCheck(event){
		const idReg = /^[a-z0-9-_]{5,21}$/;
	 	if (!idReg.test(idText.value)){
			event.preventDefault();
			message.innerText = "5~20자의 영문 소문자, 숫자와 특수기호 _  - 만 사용 가능합니다.";
			popUpMessage();

 	 	}else{
 	 	    const id = $('#user-id').val();
 	 	    console.log(id);
                    	$.ajax({
                    		url: 'regist/check',
                    		type:'post',         		
                    		data: {id:id},
                    		dataType : "json",
                    		success:function(data){
								console.log(data.cnt);
								console.log(typeof(data.cnt));
                    			if(data.cnt != 1){
                    		   		console.log(data.cnt);
                    				message.innerText = "사용 가능 합니다.";
                    				validCheckId = true;
                    				popUpMessage();
                                    idText.addEventListener("keydown",() => {
                                        validCheckId = false;
                                    });
                    			}else{
                    			 	event.preventDefault();
                    			    console.log(data.cnt);
                    				message.innerText = "이미 사용중 입니다.";

                                    validCheckId = false;
                    				popUpMessage();
                                 
                    			}

                    		},
                    		error:function(){
                    			console.log("에러");
                    		}

                    	})

 	 	}


// 	 	else if(event.path[0].id == "regist-button"){
//              console.log("?");
//              return true;
//        }else{
//			message.innerText = "사용 가능합니다.";
//			//alert("사용 가능합니다.");
//			popUpMessage();
//			return true;
//		}






}

function passwordCheck(){
	const passwordReg = /^[a-zA-Z0-9!@#$%^&*-_]{5,26}$/;
	const check = true;
	if(checkPassword.value != checkPassword2.value){
		event.preventDefault();
		document.querySelector("#div-password2").nextElementSibling.innerText = "비밀번호가 서로 틀려요!";
		// checkPassword2.nextElementSibling.innerText = "비밀번호가 서로 틀려요!";
		return false;

	}else if(checkPassword.value == checkPassword2.value && !passwordReg.test(checkPassword2.value)){
		event.preventDefault();
		document.querySelector("#div-password2").nextElementSibling.innerText = "5~25자리 대소문자,숫자,!@#$%^&*-_ 사용가능";
		// checkPassword2.nextElementSibling.innerText = "5~22자리 대소문자,숫자,특수문자만 사용가능";

		return false;
	}else{
		document.querySelector("#div-password2").nextElementSibling.innerText = "사용 가능한 비밀번호 입니다.";
		// checkPassword2.nextElementSibling.innerText = "사용 가능한 비밀번호 입니다.";
		return true;
	}

}
//checkPassword.addEventListener("blur",passwordCheck);
checkPassword2.addEventListener("blur",passwordCheck);
registButton.addEventListener("click",passwordCheck);

function emailCheck(){

//    const emailReg = /^[a-zA-Z0-9@_.]/;
    const emailReg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    const email = $('#user-email').val();
    console.log(email);
    if (!emailReg.test(emailText.value)){
  		event.preventDefault();
  		message.innerText = "올바른 이메일 양식이 아닙니다.";
  		popUpMessage();
   		//alert("아이디는 영문자로 시작하는 4~12자리의 소문자 또는 숫자이어야 합니다."
    	}else{
             $.ajax({
                 url: 'regist/emailcheck',
                 type:'post',         		
                 data: {email:email},
                 dataType : "json",
                 success:function(data){
                     if(data.cnt != 1){
                  		 console.log(data);
                         message.innerText = "사용 가능 합니다.";
                         validCheckEmail = true;
                         popUpMessage();
                     }else{
                         event.preventDefault();
                         console.log(data);
                         message.innerText = "이미 사용중 입니다.";
                         validCheckEmail = false;
                         popUpMessage();
                     }
                 },
                 error:function(){
                     console.log("에러");
                 }
             })
     }
}


checkId.addEventListener("click",idCheck);
//registButton.addEventListener("click",idCheck);

checkEmail.addEventListener("click",emailCheck);

function lastvalid(event){
     if(validCheckId != true){
            event.preventDefault();
            message.innerText = "아이디 중복확인을 해주세요.";
            popUpMessage();
       }else if(validCheckEmail != true){
            event.preventDefault();
            message.innerText = "이메일 중복확인을 해주세요.";
            popUpMessage();
       }else{

       }
}

registButton.addEventListener("click", lastvalid);