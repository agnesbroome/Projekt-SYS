$(document).ready(function() {
    $("#tipsform").submit(function(event){
        event.preventDefault()

    })
    $("#eventname").on("keyup", function(){
        if($(this).val() == ""){
            $(this).addClass("fa-check")
        }else{
            $(this).removeClass("fa-check")
            $(this).addClass("fa-check-square-o")
        }
    })
});