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
                <form name="sentMessage" id="contactForm" novalidate>
                    <div class="input-group form-group">
                            <span class="input-group-addon" id="basic-addon3">Namn</span>
                            <input type="text" class="form-control" aria-describedby="basic-addon3" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                    </div>
                    <div class="input-group form-group">
                            <span class="input-group-addon" id="basic-addon3">Telefon</span>
                            <input type="tel" class="form-control" aria-describedby="basic-addon3" id="phone" required data-validation-required-message="Please enter your phone number.">
                    </div>
                    <div class="input-group form-group">
                            <span class="input-group-addon" id="basic-addon3">Email</span>
                            <input type="email" class="form-control" aria-describedby="basic-addon3" id="email" required data-validation-required-message="Please enter your email address.">
                    </div>
                    <div class="input-group form-group">
                            <label class="form-group">Meddelande</label>
                            <textarea rows="10" cols="100" class="form-control" aria-describedby="basic-addon3" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-lg btn-primary">Skicka</button>
                </form>
            </div>

        </div>
        <!-- /Contact Form -->

        <hr>
<!-- Include footsection -->
% include("foot.tpl")
</html>