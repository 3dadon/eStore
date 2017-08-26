$( document ).ready(function() {
	var userNameParam = $("#userNameParam").val();
	var connectionFailed = $("#connectionFailedError").val();
	
	if(userNameParam && !connectionFailed) {
		$("#form").hide();
		var welcomeMsg = "Hi "+userNameParam+", WELCOME ! ";
		$("#welcomeMsg").text(welcomeMsg);
	} else if (connectionFailed) {
		$("#form").hide();
		$("#welcomeMsg").text(connectionFailed);
	}
});

$("#login-button").click(function(event){
		 event.preventDefault();	 
		 
     $("#form").fadeOut(1000);
	 $(".wrapper").addClass('form-success');
	 
	 $("#form").submit();
});