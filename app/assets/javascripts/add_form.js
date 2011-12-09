$(document).ready(function(){
	$("a#show_form").click(function(event){
		event.preventDefault
		$("div#dep_form").slideToggle();
	});
});
