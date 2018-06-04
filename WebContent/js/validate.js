/**
 * Validation formulaire
 */

function validateForm() {
	var program = document.getElementById("course");
	var radios = document.getElementsByName('session');
	var fname = document.getElementById("fName");
	var lName = document.getElementById("lName");
	var email = document.getElementById("email");
	
	var alphaExp = /^[a-zA-Z]+$/; //alphabet regex
	var emailExp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; //email regex
	
	if(fname.value.length == 0){
		var mess= "Prenom est obligatoire!";
		launchAlert(mess);
    		fname.focus();
        return false;
	}
	if(!fname.value.match(alphaExp)){
		var mess= "lettres seulement dans le prenom!";
		launchAlert(mess);
		fname.focus();
    return false;
	}
	
	if(lName.value.length == 0){
		var mess= "Nom est obligatoire!";
		launchAlert(mess);
		lName.focus();
        return false;
	}
	if(!lName.value.match(alphaExp)){
		var mess= "lettres seulement dans le nom!";
		launchAlert(mess);
		lName.focus();
    return false;
	}
	if(email.value.length == 0){
		var mess= "Courriel obligatoire!";
		launchAlert(mess);
		email.focus();
        return false;
	}
	if(!email.value.match(emailExp)){
		var mess= "format courriel pas valid!";
		launchAlert(mess);
		email.focus();
    return false;
	}

    if (program.value == "0") {
//Swal alert program!
    	var mess= "You forgot to pick a program!";
    	launchAlert(mess);
    	program.focus();
        return false;
    }
  //Swal alert session!
    for (var i = 0; i < radios.length; i++) {
        if (radios[i].checked)
        	return true;
};
var mess= "You forgot to pick a session!";
launchAlert(mess);
	return false;
}
function validateUpload() {
	
	var uploader = document.getElementById("upload_files");
	var myBtn = document.getElementById("upload_button");
	
	var txt = "";
	if ('files' in uploader) {
	    if (uploader.files.length == 0) {
	        txt = "Select one or more files.";
	        swal(txt,{
	        	closeOnClickOutside: false,
	        	title: "Attention!",
	        	  icon: "warning",
	        	})
	        return false;
	    } else {
	        for (var i = 0; i < uploader.files.length; i++) {
	            var file = uploader.files[i];
	            var filenName = file.name.toLowerCase();
	            if (!filenName.includes(".jpg") && !filenName.includes(".jpeg") && !filenName.includes(".gif") && !filenName.includes(".pdf")) {
	            	swal("fichier/s pas valide/s.",{
	    	        	closeOnClickOutside: false,
	    	        	title: "Attention!",
	    	        	  icon: "warning",
									})
									return false;
	               
	            }
	            if (file.size>1048576) {
	                swal(file.name +" dépasse le limite max de 1 Mo",{
	    	        	closeOnClickOutside: false,
	    	        	title: "Attention!",
	    	        	  icon: "warning",
									})
									return false;
	            }
	        }
	    }
	    
	    swal("Tes fichier sont valide, tu peut maintenant completer le formulaire!",{
        	closeOnClickOutside: false,
        	title: "bien fait!",
        	  icon: "success",
						})

	}
	myBtn.classList.remove("disabled");
}

function validateAll() {
	var a= validateForm();
	if(a)
	return validateUpload();
}

function addclass() {
	var myBtn = document.getElementById("upload_button");
	myBtn.className+= " " + "scale-in";
}

function launchAlert(messToDisplay) {
	swal(messToDisplay,{
		closeOnClickOutside: false,
		title: "Attention!",
		  icon: "warning",
		})
}
