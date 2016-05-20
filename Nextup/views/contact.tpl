<!DOCTYPE html>
<html lang="utf-8">

<!-- Include headsection and global navigation -->
% include("head.tpl")

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Kontakta oss
                    <small>Kontakt</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/">Hem</a>
                    </li>
                    <li class="active">Kontakta oss</li>
                    
                </ol>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8">
                <h3>Kontaktformulär</h3>
                %if sent == True:
                    <div class="alert alert-success">Ditt mail har skickats!</div>
                %end
                <form action="/contact_process" method="post" id="contactform">
                    <div class="input-group form-group">
                            <label for="email" class="control-label">Din e-mail</label>
                            <input type="email" class="form-control" name="email" required data-validation-required-message="Vänligen fyll i din email">
                            <p class="help-block"></p>
                    </div>
                    <div class="input-group form-group">
                            <label class="form-group">Meddelande</label>
                            <textarea rows="10" cols="100" class="form-control" name="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                    </div>
                    <button type="submit" class="btn btn-lg btn-default">Skicka</button>
                </form>
            </div>

        </div>
        <!-- /Contact Form -->

        <hr>
<!-- Include footsection -->
% include("foot.tpl")
        <!-- Include Bootstrap Validation form -->
<script src="static/js/contactformscript.js"></script>
</html>