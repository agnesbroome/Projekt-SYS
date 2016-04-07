% include("head.tpl")

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tipsa om event</h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Hem</a>
                    </li>
                    <li class="active">Tipsa om event</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-md-8">
                <form name="sentMessage" id="eventform">
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Eventnamn</span><input type="text" class="form-control" aria-describedby="basic-addon3">
                    </div>
                    <div class="form-group">
                        <label class="checkbox-inline">
                            <input type="checkbox" value="food"> Mat
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="nightlife"> Uteliv
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="stage"> Scen
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="shoping"> Shopping
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="music"> Musik
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="art"> Konst
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" value="other"> Övrigt
                        </label>                                                
                    </div>
                    <div class="form-group form-inline">
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-calendar"></span>
                        <input class="form-control" placeholder="ÅÅÅÅ-MM-DD">
                    </div>
                    <div class="form-group form-inline">
                        <label class="labelclass">Start</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM">
                        <label class="labelclass">Slut</label><span class="glyphicon glyphicon-time"></span>
                        <input class="form-control" placeholder="HH:MM">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Plats</span><input type="text" class="form-control">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon">Adress</span><input type="text" class="form-control">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Arrangör</span><input type="text" class="form-control" aria-describedby="basic-addon3">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Webbsida</span><input type="text" class="form-control" aria-describedby="basic-addon3">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Välj bild till ditt event</label>
                        <input type="file" accept="image/*" id="exampleInputFile">
                        <p class="help-block">Bilden får inte överstiga X kb</p>
                    </div>
                    <div class="form-group">
                        <label>Beskrivning (Max 500 ord!)</label>
                          <textarea class="form-control" rows="10"></textarea>
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">Tipsare</span><input type="text" class="form-control" aria-describedby="basic-addon3">
                    </div>
                    <div class="input-group form-group">
                          <span class="input-group-addon" id="basic-addon3">E-post</span><input type="text" class="form-control" aria-describedby="basic-addon3">
                    </div>                    

                <button type="submit" class="btn btn-lg btn-primary">Skicka</button>
            </div>
        </form>
        <!-- /.row -->

    % include("foot.tpl")