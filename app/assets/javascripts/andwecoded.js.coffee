$ ->
	commit = $(this).val()
	callback = (response) -> update_commits response
	$.get 'https://api.github.com/repos/homeski/andwecoded.com-blog/commits', {commit}, callback, 'json'

update_commits = (x) -> 
	$("#commits-list").append "<li><a href=#{obj.html_url}>#{obj.commit.message}</a></li>" for obj in x[0..4]