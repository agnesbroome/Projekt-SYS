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
              <ul class="dropdown-menu" name="sortlist" id="sortlist">
                <a href="/events/januari"><li value="01">Januari</li></a>
                <a href="/events/februari"><li value="02">Februari</li></a>
                <a href="/events/mars"><li value="03">Mars</li></a>
                <a href="/events/april"><li value="04">April</li></a>
                <a href="/events/maj"><li value="05">Maj</li></a>
                <a href="/events/juni"><li value="06">Juni</li></a>
                <a href="/events/juli"><li value="07">Juli</li></a>
                <a href="/events/augusti"><li value="08">Augusti</li></a>
                <a href="/events/september"><li value="09">September</li></a>
                <a href="/events/oktober"><li value="10">Oktober</li></a>
                <a href="/events/november"><li value="11">November</li></a>
                <a href="/events/december"><li value="12">December</li></a>
              </ul>
            </div>  
        % for i in events:
        <div class="event_flow col-md-12">
            <hr>
            <div class="col-md-2" id="img_events">
                <a href="eventpage/{{i['event_ID']}}">
                <img class="img-responsive" src="../{{i['image']}}" onerror="this.src='../static/images/uploaded/no_image.png'" alt="no image found" onError="this.src=../'no_image.png'"></a>
            </div>
                <div class="col-md-8">
                    <a href="../eventpage/{{i['event_ID']}}"><h3>{{i['event_name']}}</h3></a>
                    <h4 class="selector">Datum:  {{i['first_day']}} - {{i['last_day']}}</h4>
                    <h4>Tid:  {{str(i['first_time'])[:-3]}}</h4>
                    <h4>Plats:  {{i['location']}}</h4>
                    <h4>Adres:  {{i['adress']}}</h4>
                </div>
        </div>
        %end
        <!-- /Event listing  -->
    <!-- /Page Content -->
<!-- Include footsection -->
% include("foot.tpl")
<script src="/static/js/events.js"></script>
</html>