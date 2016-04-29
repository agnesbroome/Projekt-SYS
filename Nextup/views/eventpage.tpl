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
        <div class="row" id="eventrow">
            <div class="col-md-6">
                <img class="img-responsive" src="http://placehold.it/750x450" alt="">
            </div>
            <div id="eventinfo" class="col-md-6">
                <h2>Event 1</h2> 
                <h3 id="symbols"><i class="glyphicon glyphicon-glass"></i> <i class="glyphicon glyphicon-music"></i></h3>
                <h4>Datum</h4>
                <h4>HH:MM</h4>
                <h4>Plats</h4>
                <h4>Adress</h4>
                <h4>Arrangör</h4>
                <h4>www.webbsida.se</h4>
            </div>
        </div>
        <div id="eventtext">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat. </p>
        </div>
            </div>  
        <!-- /Eventpage -->
    <!-- /Page Content -->

<!-- Include footsection -->
% include("foot.tpl")
</html>