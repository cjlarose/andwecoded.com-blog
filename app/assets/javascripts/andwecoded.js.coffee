$ ->
	commit = $(this).val()
	callback = (response) -> update_commits response
	$.get 'https://api.github.com/repos/homeski/andwecoded.com-blog/commits', {commit}, callback, 'json'

update_commits = (x) -> 
	$("#commits").append "<li>#{obj.commit.message} <a href=#{obj.html_url}><i class=\"fa fa-external-link\"></i></a></li>" for obj in x[0..4]