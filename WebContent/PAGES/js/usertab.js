function userOption(OptBtn){
	switch (OptBtn) {
		case 'Add':
				var xdata = "event=addUser";
				$.ajax({
					url: pagePath + "user-records",
					method: "POST",
					data: xdata,
					success: function(res){
						$("#content-container").html(res).hide();
						$("#content-container").fadeIn( 200, function() {
								$("#content-container").html(res);
							});
					},
					error: function(jqXHR, textStatus, errorThrown){
						alert("ERROR 404! -" + errorThrown);
					}
				});
			break;
		case 'Edit':
				
			break;
		case 'Delete':
		
		break;
	}
}