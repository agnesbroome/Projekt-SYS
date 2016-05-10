<!DOCTYPE html>

<html lang="utf-8">

<!-- Include headsection and global navigation -->
% include("head.tpl")
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Eventsida
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/">Hem</a>
                    </li>
                    <li class="active">Eventsida</li>
                </ol>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->

        <!-- Eventpage -->
        <main id="event_page">
            %for i in single:
                <div id="event_page", class="headevent">
                    <h2>{{i['event_name']}}</h2>  
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-responsive" src="static/images/two.jpg" alt="">
                    </div>  
                    <div id="eventinfo" class="col-md-6">
                   
                        <h2>{{i['first_day']}} - {{i['last_day']}}</h2>
                        <h2>{{i['first_time']}} - {{i['last_time']}}</h2>
                        <h2>{{i['location']}}</h2>
                        <h2>{{i['adress']}}</h2>
                        <h2>{{i['organizer']}}</h2>
                        <h2><a href="{{i['website']}}">{{i['website']}}</a></h2>
                    </div>
                    </div>
                    <div id="description">
                        <p>{{i['description']}}</p>
                    </div>
                    <div id="tipster">
                        <p>Lagt till av: <strong>{{i['tipster']}} </strong></p>
                    </div>
            %end
            </div>
    </main>
        <!-- /Eventpage -->
    <!-- /Page Content -->

<!-- Include footsection -->
% include("foot.tpl")
</html>

