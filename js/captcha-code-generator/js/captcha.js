$("#refreshimg").live('click',function(){

		$.post('includes/newsession.php');
		$("#captchaimage").load('includes/image_req.php');
		return false;
                
	});
