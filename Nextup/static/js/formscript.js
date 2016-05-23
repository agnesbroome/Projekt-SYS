$(document).ready(function () {
    "use strict";
    var validator = $("#tipsform").bootstrapValidator({
        framework: 'bootstrap',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields : {
            category : {
                validators : {
                    choice: {
                        min: 1,
                        message: "Du måste välja minst en kategori som passar eventet!"
                    }
                }
            },
            event_name : {
                validators: {
                    notEmpty : {
                        message : "Var god skriv in namnet på ditt Event!"
                    }
                }
            },
            first_day : {
                validators: {
                    notEmpty : {
                        message: "Var god skriv in ett startdatum!"
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: "Var god skriv in ditt datum som ÅÅÅÅ-MM-DD!"
                    }
                }
            },
            last_day : {
                validators: {
                    notEmpty : {
                        message: "Var god skriv in ett slutdatum!"
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: "Var god skriv in ditt datum som ÅÅÅÅ-MM-DD!"
                    }
                }
            },
            first_time : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in en starttid!"
                    }
                }
            },
            
            last_time : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in en sluttid!"
                    }
                }
            },
            location : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv platsen för eventet!"
                    }
                }
            },
            adress : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv adress för eventet!"
                    }
                }
            },
            organizer : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in arrangör för eventet!"
                    }
                }
            },
            website : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in adressen till eventets webbplats, använd https://!"
                    },
                    uri: {
                        message: "Var god skriv in en korrekt URL!"
                    }
                }
            },
            image : {
                validators: {
                    file: {
                        extension: "jpeg,jpg,png",
                        type: 'image/jpeg,image/png',
                        message: "Filen du valt uppfyller inte sidans krav!"
                    }
                }
            },
            description : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in en besktivning av eventet!"
                    },
                    stringLength: {
                        min: 150,
                        max: 2000,
                        message: "Beskrivningen av ditt event måste vara minst 150 tecken men får inte överskrida 2000 tecken!"
                    }
                }
            },
            tipster : {
                validators : {
                    notEmpty : {
                        message: "Var god skriv in vem du är som tipsar om eventet!"
                    }
                }
            },
            tipster_mail : {
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
                 
                 
                 
                 