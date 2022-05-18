  
  let starScore = 0;
  const drawStar = (target) => {
	  	document.querySelector(`.star span`).style.width = `${target.value * 20}%`;
	    
	    starScore = target.value;
	 	 console.log("star"+starScore);
	    
	  }
	  
	  
	  
	  
 	