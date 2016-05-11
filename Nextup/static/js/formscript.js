$(document).ready(function () {
    "use strict";
    var validator = $("#tipsform").bootstrapValidator({
        fields : {
            email : {
                message : "Du måste fylla i en E-post adress!",
                validators : {
                    notEmpty : {
                        message : "Var god skriv in en e-postadress!"
                    },
                    emailAddress: {
                        message: "Vad god skriv in en giltig e-postadress!"
                    }
                }
            } 
        } 
    });
});
                 
                 
                 
                 