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
                <form action="/tipsprocess" method="post" accept-charset="UTF-8">
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Eventnamn</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="eventname">
                    </div>
                    <div class="form-group">
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
                            <input type="checkbox" name="category" value="Annat"> Annat
                        </label>                                                
                    </div>
                    <div class="form-group form-inline">
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="startdate">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD" name="enddate">
                    </div>
                    <div class="form-group form-inline">
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="starttime">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM" name="endtime">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Plats</span><input type="text" class="form-control" name="location">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon">Adress</span><input type="text" class="form-control" name="address">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Arrangör</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="organizer">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Webbsida</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="website" placeholder="https://www.exempel.se">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Välj bild till ditt event</label>
                        <input type="file" accept="image/*" id="exampleInputFile" name="image">
                        <p class="help-block">Bilden får inte överstiga X kb</p>
                    </div>
                    <div class="form-group">
                        <label>Beskrivning (Max 500 ord!)</label>
                          <textarea class="form-control" rows="10" name="description"></textarea>
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Tipsare</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="tipster">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">E-post</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="email">
                    </div>
                <button type="submit" class="btn btn-lg btn-primary">Skicka</button>
            </div>
        <!-- /Tip form -->
        </form>
    <!-- /Page Content -->
        <!-- /.row -->
<!-- Include footsection -->
% include("foot.tpl")