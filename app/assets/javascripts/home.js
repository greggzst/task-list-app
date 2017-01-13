$(document).on("turbolinks:load", function(){
	$.getJSON("/tasks",function(data){
		var tasks = [];
		$.each(data, function(key,value){
			$.each(value, function(key, value){
				tasks.push(key + ' ' + value);
			});
		});

		$(".tasks").text(tasks);
	});
});