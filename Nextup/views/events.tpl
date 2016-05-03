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
        % for tip in tips:
        <div class="tip">
            <h4>Här listas alla event i kronologisk ordning. Om du vill leta efter event på ett specifikt datum trycker du bara på datumet i kalendern.
            </h4>
            % if tip["image"] != "":
            <img src="{{tip['image']}}" alt="En bild">
            % end
            <h2>{{tip['event_name']}}</h2>
            <h3>{{tip['first_day']}} - {{tip['last_day']}}</h3>
          <p>{{!tip['description']}}</p>
        </div>
        % end
        
        <!-- /Event listing  -->
        <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-star"></i> Kommande events</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-condensed">
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /Section 2 - Center -->
            
            <!-- Section 3 - Right -->
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-calendar"></i> Eventkalender</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <!-- /Section 3 - Right -->
    <!-- /Page Content -->

<!-- Include footsection -->
% include("foot.tpl")
</html>