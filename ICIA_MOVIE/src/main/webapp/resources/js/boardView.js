const modal = document.createElement("div");
	const messageBox = document.createElement("div");
	const messageBtn = document.createElement("button");
	const messageBtn2 = document.createElement("button");
	const message = document.createElement("span");
	const content = document.querySelector(".regist-frame");
	const input = document.createElement("input");
	input.value = "";


	function popUpMessage(name, bNum){
	/* 	input.setAttribute("type","text");
		input.setAttribute("placeholder","비밀번호 입력"); */
		modal.className = "modal2";
		messageBox.id = "message-box";
		messageBtn.id = "popup-button";
		messageBtn2.id = "popup-button2";
		
		//messageBtn.setAttribute("value","확인");
		messageBtn.innerText = "확인";
		messageBtn2.innerText = "취소";
		
		content.appendChild(modal); 
		modal.appendChild(messageBox);
		messageBox.appendChild(message);
		/* messageBox.appendChild(input); */
		messageBox.appendChild(messageBtn);
		messageBox.appendChild(messageBtn2);

		/* pw = input.value; */
		if(name=='modiBtn'){
			message.innerText = "수정 하시겠습니까?";
			
			messageBtn.addEventListener("click",()=>{
				
				 		location.href="bModifyForm?bNum="+bNum;
					
			

			});
			messageBtn2.addEventListener("click",()=>{
				input.textContent = "";
				modal.remove();
				
				
			});
		}else if(name=='delBtn'){
			message.innerText = "삭제 하시겠습니까?";	
			messageBtn.addEventListener("click",()=>{
				
		 		location.href="bDelete?bNum="+bNum;
			
	

			});
			messageBtn2.addEventListener("click",()=>{
				input.textContent = "";
				modal.remove();
		
		
			});
			
		}
	

	}
