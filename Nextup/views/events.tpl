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
          <button type="button" id="orange" class="btn btn-lg btn-info dropdown-toggle btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Jag vill se alla event i  <span class="caret"></span>
            <span class="sr-only">Toggle Dropdown</span>
          </button>
          <ul class="dropdown-menu" id="sortlist">
            <li><a href="events" action="/sorting" method="post">Januari</a></li>
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
        <div id="categories_events">
            <span class="label label-info">Mat<i class="fa fa-cutlery" aria-hidden="true"></i></span>
            <span class="label label-info">Musik<i class="fa fa-music" aria-hidden="true"></i></span>
            <span class="label label-info">Uteliv<i class="fa fa-glass" aria-hidden="true"></i></span>
            <span class="label label-info">Konst<i class="fa fa-paint-brush" aria-hidden="true"></i></span>
            <span class="label label-info">Scen<i class="fa fa-hand-peace-o" aria-hidden="true"></i></span>
            <span class="label label-info">Shopping<i class="fa fa-cc-visa" aria-hidden="true"></i></span>
            <span class="label label-info">Övrigt<i class="fa fa-question-circle-o" aria-hidden="true"></i></span>
        </div>           
        % for i in events:
        <div class="event_flow col-md-12">
            <hr>
            <div class="col-md-4" id="img_events">
                <a href="eventpage/{{i['event_ID']}}">
                <img class="img-responsive" src="../{{i['image']}}" onerror="this.src='../static/images/uploaded/no_image.png'" alt="no image found" onError="this.src=../'no_image.png'"></a>
            </div>
                <div class="col-md-6">
                    <a href="eventpage/{{i['event_ID']}}"><h3>{{i['event_name']}}</h3></a>
                    <h4>{{i['first_day']}} {{i['first_time']}}</h4>
                    <h4>{{i['location']}} {{i['adress']}}</h4>
                    <i class="fa fa-cutlery fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-music fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-glass fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-paint-brush fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-hand-peace-o fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-cc-visa fa-2x" aria-hidden="true"></i>
                    <i class="fa fa-question-circle-o fa-2x" aria-hidden="true"></i>
                </div>
        </div>
            
        % end
        
        <!-- /Event listing  -->
    <!-- /Page Content -->
<!-- Include footsection -->
% include("foot.tpl")
<script src="/static/js/events.js"></script>
</html>