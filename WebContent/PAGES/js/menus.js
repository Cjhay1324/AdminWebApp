function onClickMenu(Menu){
	switch (Menu) {
	case 'Dashboard':
		
		break;
	case 'Users':
			var xdata = "event=getUsers";
		
			$.ajax({
				url: pagePath + "user-records",
				method: 'POST',
	//			dataType: 'JSON',
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
	case 'Account':
	
	break;
	case 'Logout':
	
	break;
	}
}