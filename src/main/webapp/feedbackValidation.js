function validateBlur() {
	
	let email = document.getElementById("email");

	const emailRegex = /^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$/;
	if(!emailRegex.test(email)) {
		document.getElementById("emsg").textContent = "Your email is missing something";
	} 
	}
	function validateFocus() {
		document.getElementById("emsg").textContent = "";
	}

