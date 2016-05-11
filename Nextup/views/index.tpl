<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headindex.tpl")

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
                        <p>Välkommen till NextUP! Här kan du ta del av och tipsa oss om event och aktiviteter som äger rum runt om i Malmöområdet. Ska du ordna en klubb? Kanske styra upp en loppmarknad med grannarna? Då kan du tipsa oss så lägger vi upp det här så att hela Malmö får reda på det! Tryck på knappen här nedanför så kommer du till vårt tipsformulär.
</p>
                        <a href="tips" class="btn btn-default">Tipsa här</a>
                    </div>
                </div>
            </div>
            <!-- /Section 1 - Left -->
            
            <!-- Section 2 - Center -->
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-calendar"></i> Eventsamling</h4>
                    </div>
                    <div class="panel-body">
                        
<a href="events" class="btn btn-default">Se events</a>
                    </div>
                </div>
            </div>
            <!-- /Section 2 - Center -->
            
            <!-- Section 3 - Right -->
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-star"></i> Kommande events</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-condensed">
                            <tbody>
                                %for i in events:
                                <tr>
                                    <td><a href="eventpage/{{i['event_ID']}}">{{i['event_name']}}</a></td>
                                    <td>{{i['first_day']}}</td>
                                    <td>{{i['first_time']}}</td>
                                </tr>
                                %end
                            </tbody>
                        </table>
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
