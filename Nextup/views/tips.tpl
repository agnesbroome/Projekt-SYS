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
                %if len(error) > 0:
                    <div class="alert alert-danger">Vänligen fyll i fälten korrekt - se rödmarkerade fält</div>
                    {{error}}
                %end
                %if success == True:
                    <div class="alert alert-success">Ditt tips har skickats!</div>
                %end
                <form id="tipsform" data-toggle="validator" role="form" action="/tips_process" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
                    <!-- Eventname -->
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Eventnamn</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="event_name" id="event_name">
                    </div>
                    <!-- /Eventname -->
                    <!-- Categorys -->
                    <div class="form-group">
                        <div class="checkbox">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Mat"> Mat
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Uteliv"> Uteliv
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Scen"> Scen
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Shopping"> Shopping
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Musik"> Musik
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Konst"> Konst
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="category" value="Annat"> Övrigt
                        </label>                                                
                    </div>
                    </div>
                    <!-- /Categorys -->
                    <!-- Date -->
                    <div class="form-group form-inline">
                        <div>
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="first_day">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="last_day">
                        </div>
                    </div>
                    <!-- /Date -->
                    <!-- Time -->
                    <div class="form-group form-inline">
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="first_time">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="last_time">
                    </div>
                    <!-- /Time -->
                    <!-- Location -->
                    <div class="input-group form-group">
                        <span class="input-group-addon" id="basic-addon3">Plats</span>
                        <input type="text" class="form-control" name="location">
                    </div>
                    <!-- /Location -->
                    <!-- Adress -->
                    <div class="input-group form-group">
                          <span class="input-group-addon">Adress</span><input type="text" class="form-control" name="adress">
                    </div>
                    <!-- /Adress -->
                    <!-- Organizer -->
                    <div class="input-group form-group">
                        <span class="input-group-addon" id="basic-addon3">Arrangör</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="organizer">
                    </div>
                    <!-- /Organizer -->
                    <!-- Website -->
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Webbsida</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="website" placeholder="https://www.exempel.se">
                    </div>
                    <!-- /Website -->
                    <!-- Image -->
                    <div class="form-group">
                        <label for="exampleInputFile">Välj bild till ditt event</label>
                        <input type="file" accept="image/*" name="image">
                        <p class="help-block">Bilden får inte överstiga X kb</p>
                    </div>
                    <!-- /Image -->
                    <!-- Description -->
                    <div class="form-group">
                        <label>Beskrivning (Max 2000 tecken)</label>
                          <textarea class="form-control" rows="10" name="description"></textarea>
                    </div>
                    <!-- /Description -->
                    <!-- Tipster -->
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Tipsare</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="tipster">
                    </div>
                    <!-- /Tipster -->
                    <!-- email -->
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">E-post</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="tipster_mail"/>
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
<!--<script src="static/js/tipsscript.js"></script> -->
<!-- Include Bootstrap Validation form -->
<script src="static/js/formscript.js"></script>
</html>