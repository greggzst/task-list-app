$(document).on("turbolinks:load", function(){
	$.getJSON("/tasks",function(data){
		var tasks = "";
		var task_done = [];

		$.each(data, function(key,value){
			tasks += "<div class='col-lg-3 col-lg-offset-1 well'>";

			$.each(value, function(key, value){
				if(key != "done")
					tasks += "<strong>" + value + "</strong>";
				else
					task_done.push(value)
			});

			tasks += "</div>";
		});

		$("#tasks").append(tasks);
		$('.well').each(function(i, obj){
			if(task_done[i])
				$(obj).addClass('task-done');
			else
				$(obj).addClass('task-to-do');
		});
	});
});