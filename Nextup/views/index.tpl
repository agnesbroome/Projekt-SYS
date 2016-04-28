<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("head.tpl")

    <!-- Header Carousel -->
    <!-- JS for Carusel speed is in foot.tpl -->
    <header id="myCarousel" class="carousel slide">
        
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- /Indicators -->
        
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('/static/images/one.jpg');"></div>
                <div class="carousel-caption">
                    <!--ref:  http://static1.squarespace.com/static/55c37beae4b0336075603f86/55c3cd80e4b01531b3208f2e/5603032be4b008bd0ad4e6fb/1455546867623/?format=1500w -->
                    <h2>Exempel 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('/static/images/two.jpg');"></div>
                <div class="carousel-caption">
                    <!--ref: http://skygarden.london/sites/default/files/Sky%20Garden%20Events%2029th%20April%20-%202MB39.jpg -->
                    <h2>Exempel 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('/static/images/three.jpg');"></div>
                <div class="carousel-caption">
                    <!--ref: http://www.blueevents-agency.com/wp-content/uploads/2013/11/explore-events-food-and-wine-events.jpg -->
                    <h2>Exempel 3</h2>
                </div>
            </div>
        </div>
        <!-- /Wrapper for slides -->

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
        <!-- /Controls -->        
    </header>
    <!-- /Header Carousel -->

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" id="indexheader">
                    Next UP! <small>Eventscen Malmö</small>
                </h1>
            </div>
            <!-- /Page header -->
            
            <!-- Main funktionality Section -->
            <!-- Section 1 - Left -->
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-bullhorn"></i> Tipsa om event</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="tips" class="btn btn-default">Tipsa här</a>
                    </div>
                </div>
            </div>
            <!-- /Section 1 - Left -->
            
            <!-- Section 2 - Center -->
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-star"></i> Kommande events</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-condensed">
                            <tbody>
                                <tr>
                                    <td>Datum</td>
                                    <td>Tid</td>
                                    <td><a href="eventpage">Eventnamn</a></td>
                                </tr>
                                <tr>
                                    <td>Datum</td>
                                    <td>Tid</td>
                                    <td>Eventnamn </td>
                                </tr>
                                <tr>
                                    <td>Datum</td>
                                    <td>Tid</td>
                                    <td>Eventnamn </td>
                                </tr>
                                <tr>
                                    <td>Datum</td>
                                    <td>Tid</td>
                                    <td>Eventnamn </td>
                                </tr>
                                <tr>
                                    <td>Datum</td>
                                    <td>Tid</td>
                                    <td>Eventnamn </td>
                                </tr>
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
        </div>
        <!-- /Main funktionality Section -->
        <!-- /Page Content -->

        <hr>
<!-- Include footsection -->
% include("foot.tpl")
</html>
