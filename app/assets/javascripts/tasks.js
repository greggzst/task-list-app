$(document).on("turbolinks:load",function(){
	$('body').on('click', '.task-to-do',function(){
		var url = $(this).data("url");
		$.get(url);
	});
});
