<!DOCTYPE html>
<html lang="utf-8">

<!-- Include headsection and global navigation -->
% include("head.tpl")

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Eventsamling
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/">Hem</a>
                    </li>
                    <li class="active">Eventsamling</li>
                </ol>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->

        <!-- Event listing  -->
        <div class="btn-group dropup" id="event_chooser">
          <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Jag vill se alla event i  <span class="caret"></span>
            <span class="sr-only">Toggle Dropdown</span>
          </button>
          <ul class="dropdown-menu">
            <li><a href="#">Januari</a></li>
            <li><a href="#">Februari</a></li>
            <li><a href="#">Mars</a></li>
            <li><a href="#">April</a></li>
            <li><a href="#">Maj</a></li>
            <li><a href="#">Juni</a></li>
            <li><a href="#">Juli</a></li>
            <li><a href="#">Augusti</a></li>
            <li><a href="#">September</a></li>
            <li><a href="#">Oktober</a></li>
            <li><a href="#">November</a></li>
            <li><a href="#">December</a></li>
          </ul>
        </div>           
        % for i in events:
        <div class="tip">
            <h2>{{i['event_name']}}</h2>
            <h3>{{i['first_day']}} - {{i['last_day']}}</h3>
            <i class="fa fa-music fa-3x" aria-hidden="true"></i>
            <i class="fa fa-glass fa-3x" aria-hidden="true"></i>
            <i class="fa fa-paint-brush fa-3x" aria-hidden="true"></i>
            <i class="fa fa-hand-peace-o fa-3x" aria-hidden="true"></i>
            <i class="fa fa-cc-visa fa-3x" aria-hidden="true"></i>
            <hr>
        </div>
        % end
        
        <!-- /Event listing  -->
    <!-- /Page Content -->
<!-- Include footsection -->
<script src="events.js"></script>
% include("foot.tpl")
</html>