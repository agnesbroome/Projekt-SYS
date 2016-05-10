$(document).ready(function(){
	$("#categories_events > label").hide()
	$("#categories_events > i").hover(function(){
		$(this).next().toggle("medium")
	})
})