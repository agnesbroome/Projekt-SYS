$(document).on("ready", function(){
	$(".single_cat").hide();
	if($('.single_cat:contains("Mat")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-cutlery fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Musik")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-music fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Uteliv")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-glass fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Konst")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-paint-brush fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Scen")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-hand-peace-o fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Shopping")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-cc-visa fa-2x" aria-hidden="true"></i>')
	};
	if($('.single_cat:contains("Övrigt")').length > 0){
		$(".single_cat").parent().append('  <i class="fa fa-question-circle-o fa-2x" aria-hidden="true"></i>')
	};
	// $(".likes > i").mouseout(function(){
	// 	$(this).class('fa fa-thumbs-o-up fa-3x')
	// })

});