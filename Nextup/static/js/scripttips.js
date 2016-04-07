$("#eventform").submit(function(event){
	console.log($("#eventform > input").value)
	event.preventDefault();
})