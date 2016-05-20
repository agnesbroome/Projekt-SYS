<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headindex.tpl")

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 index">
                <h1 class="page-header" id="indexheader">
                    Next UP! <small>Eventscen Malmö</small>
                </h1>
            </div>
            <!-- /Page header -->
            
            <!-- Main funktionality Section -->
            <!-- Section 1 - Left -->
            <div class="col-md-4">
                <div class="panel panel-default heigt-homepagepanel-index">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-heart"></i> Välkommen till NextUP!</h4>
                    </div>
                    <div class="panel-body">
                        <p>Här kan du se vad som händer runt om i vårt underbara Malmö!</p> 
                        <p>Vår mission är att vi ska ha örat mot trottoaren och fingret på pulsen så just du kan få hjälp att hitta vad du och dina vänner ska göra i helgen!</p> 
                        <p>Have a good one!</p>
                        <p>Hälsningar Team NextUP!</p>
                    </div>
                </div>
            </div>
            <!-- /Section 1 - Left -->
            
            <!-- Section 2 - Center -->
            <div class="col-md-4">
                <div class="panel panel-default heigt-homepagepanel-index">
                    <div class="panel-heading">
                        <h4><i class="fa fa-bullhorn"></i> Tipsa om event</h4>
                    </div>
                    <div class="panel-body">
                        <p>Ska du ordna en klubb? Kanske styra upp en loppmarknad med grannarna?</p>
                        <p>Eller om du bara du har koll på ett fett event som du vill dela med andra i Malmö så lägg till det i vårt flöde!</p>
                        <p>Tryck på knappen här nedanför så kommer du till vårt tipsformulär.</p>
                        <br>
                        <a href="tips" class="btn btn-lg btn-default">Tipsa oss här</a>
                    </div>
                </div>
            </div>
            <!-- /Section 2 - Center -->
            
            <!-- Section 3 - Right -->
            <div class="col-md-4">
                <div class="panel panel-default heigt-homepagepanel-index">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-star"></i> Kommande events</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-condensed" id="tableNE">
                            <tbody>
                                %for i in events:
                                <tr>
                                    <td><a href="eventpage/{{i['event_ID']}}">{{i['event_name']}}</a></td>
                                    <td>{{i['first_day']}}</td>
                                    %time = str(i['first_time'])[:-3]
                                    %if len(time) == 4:
                                        <td>0{{time}}</td>
                                        %else:
                                            <td>{{time}}</td>
                                        %end

                                </tr>
                                %end
                            </tbody>
                        </table>
                    </div>
                </div>
            <!-- /Section 3 - Right -->
        </div>
        <!-- /Main funktionality Section -->
        <!-- /Page Content -->
<!-- Include footsection -->
% include("foot.tpl")
    
</html>