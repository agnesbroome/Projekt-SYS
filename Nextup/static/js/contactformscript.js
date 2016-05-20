$(document).ready(function () {
    "use strict";
    var validator = $("#contactform").bootstrapValidator({
        framework: 'bootstrap',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
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
            },
              
            message : {
                validators : {
                    notEmpty : {
                        message: "Var god in skriv ett meddelande!"
                    }
                }
            }
            
        }
    });
});
            