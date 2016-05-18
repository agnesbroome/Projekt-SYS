<!DOCTYPE html>
<html lang="utf-8">

<!-- Include headsection and global navigation -->
% include("head.tpl")


    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tipsa om event</h1>
                <ol class="breadcrumb">
                    <li><a href="/">Hem</a>
                    </li>
                    <li class="active">Tipsa om event</li>
                </ol>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->
        <!-- Tip form -->
        <div class="row">
            <div class="col-md-8">
                %if success == True:
                    <div class="alert alert-success">Ditt tips har skickats!</div>
                %end
                <form id="tipsform" data-toggle="validator" role="form" action="/tips_process" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
                    <!-- Eventname -->
                    <div class="form-group">
                        <label for="event_name" class="control-label">Eventnamn</label>
                        <input type="text" class="form-control" name="event_name" id="event_name">
                    </div>
                    <!-- /Eventname -->
                    <!-- Categorys -->
                    <div class="form-group">
                        <div class="checkbox">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="1"> Mat
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="2"> Uteliv
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="3"> Scen
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="4"> Shopping
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="5"> Musik
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="6"> Konst
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="7"> Övrigt
                        </label>                                                
                    </div>
                    </div>
                    <!-- /Categorys -->
                    <!-- Date -->
                    <div class="form-group form-inline">
                        <div>
                        <label for="first_day" class="labelclass control-label">Start</label>
                        <span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="first_day" id="first_day">
                        <label for="last_day" class="labelclass control-label">Slut</label>
                        <span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="last_day" id="last_day">
                        </div>
                    </div>
                    <!-- /Date -->
                    <!-- Time -->
                    <div class="form-group form-inline">
                        <label for="first_time" class="control-label">Start</label>
                        <span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="first_time" id="first_time">
                        <label for="last_time" class="control-label">Slut</label>
                        <span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="last_time" id="last_time">
                    </div>
                    <!-- /Time -->
                    <!-- Location -->
                    <div class="form-group">
                        <label for="location" class="control-label">Plats</label>
                        <input type="text" class="form-control" name="location" id="location">
                    </div>
                    <!-- /Location -->
                    <!-- Adress -->
                    <div class="form-group">
                          <label for="adress" class="control-label">Adress</label>
                          <input type="text" class="form-control" name="adress" id="adress">
                    </div>
                    <!-- /Adress -->
                    <!-- Organizer -->
                    <div class="form-group">
                        <label for="organizer" class="control-label">Arrangör</label>
                        <input type="text" class="form-control" name="organizer" id="organizer">
                    </div>
                    <!-- /Organizer -->
                    <!-- Website -->
                    <div class="form-group">
                        <label for="website" class="control-label">Webbsida</label>
                        <input type="text" class="form-control" name="website" id="website" placeholder="https://www.exempel.se">
                    </div>
                    <!-- /Website -->
                    <!-- Image -->
                    <div class="form-group">
                        <label for="image">Välj bild till ditt event</label>
                        <input type="file" accept="image/*" name="image" id="image">
                        <p class="help-block">Bilden får inte överstiga X kb</p>
                    </div>
                    <!-- /Image -->
                    <!-- Description -->
                    <div class="form-group">
                        <label for="description" class="control-label">Beskrivning (Max 2000 tecken)</label>
                          <textarea class="form-control" rows="10" name="description" id="description"></textarea>
                    </div>
                    <!-- /Description -->
                    <!-- Tipster -->
                    <div class="form-group">
                        <label for="tipster" class="control-label">Tipsare</label>
                        <input type="text" class="form-control" name="tipster" id="tipster">
                    </div>
                    <!-- /Tipster -->
                    <!-- email -->
                    <div class="form-group">
                        <label for="tipster_mail" class="control-label">E-post</label>
                        <input type="text" class="form-control" name="tipster_mail" id="tipster_mail"/>
                    </div>
                    <!-- /email -->
                <button type="submit" class="btn btn-lg btn-primary">Skicka</button>
            </div>
        <!-- /Tip form -->
        </form>
    <!-- /Page Content -->
        <!-- /.row -->
<!-- Include footsection -->
% include("foot.tpl")
<!-- Include Bootstrap Validation form -->
<!-- <script src="static/js/formscript.js"></script> -->
</html>