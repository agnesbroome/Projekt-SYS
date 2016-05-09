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
<<<<<<< Updated upstream
            <div class="headevent">
                <h2>{{tip['event_name']}}</h2>  
            </div>
=======
            %for tip in tips:
            
            <div id="event_page", class="headevent">
                <h2>{{tip['event_name']}}</h2>  
            </div>
        
            <!--%if tips == tips:-->
           
                %if tip ['event_ID'] == i:

                
>>>>>>> Stashed changes
            <div class="row">
                <div class="col-md-6">
                    <img class="img-responsive" src="static/images/two.jpg" alt="">
                </div>  
                <div id="eventinfo" class="col-md-6">
               
                    <h2>{{tip['first_day']}} - {{tip['last_day']}}</h2>
                    <h2>{{tip['first_time']}} - {{tip['last_time']}}</h2>
                    <h2>{{tip['location']}}</h2>
                    <h2>{{tip['adress']}}</h2>
                    <h2>{{tip['organizer']}}</h2>
                    <h2><a href="{{tip['website']}}">{{tip['website']}}</a></h2>
                </div>
                </div>
                <div id="description">
                    <p>{{tip['description']}}</p>
                </div>
                <div id="tipster">
                    <p>Lagt till av: <strong>{{tip['tipster']}} </strong></p>
                </div>
<<<<<<< Updated upstream
=======
                %end
        
>>>>>>> Stashed changes
            </div>  
    </main>
        <!-- /Eventpage -->
    <!-- /Page Content -->

<!-- Include footsection -->
% include("foot.tpl")
</html>

