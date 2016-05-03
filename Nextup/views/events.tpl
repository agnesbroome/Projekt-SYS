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
        <h4>Här listas alla event i kronologisk ordning. Om du vill leta efter event på ett specifikt datum trycker du bara på datumet i kalendern.
            </h4>
        % for tip in tips:
        <div class="tip">
            % if tip["image"] != "":
            <img src="{{tip['image']}}" alt="En bild">
            % end
            <h2>{{tip['event_name']}}</h2>
            <h3>{{tip['first_day']}} - {{tip['last_day']}}</h3>
          <p>{{!tip['description']}}</p>
        </div>
        % end
        
        <!-- /Event listing  -->
        <div id="right_position">
        <!-- Section 2 - Center -->
            <div id= "calender_nu_float" class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-star"></i> Kommande events</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-condensed">
                            <tbody>
                                %for i in events:
                                <tr>
                                    <td>{{i['event_name']}}</td>
                                    <td>{{i['first_day']}}</td>
                                    <td>{{i['first_time']}}</td>
                                </tr>
                                %end
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /Section 2 - Center -->
            
            <!-- Section 3 - Right -->
            <div id= "calender_nu_float" class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-calendar"></i> Eventkalender</h4>
                    </div>
                    <div class="panel-body">
                        <div class="month"> 
  <ul>
    <li class="prev">&#10094;</li>
    <li class="next">&#10095;</li>
    <li>August<span style="font-size:14px">2016</span>
    </li>
  </ul>
</div>

<ul class="weekdays">
  <li>Mo</li>
  <li>Tu</li>
  <li>We</li>
  <li>Th</li>
  <li>Fr</li>
  <li>Sa</li>
  <li>Su</li>
</ul>

<ul class="days"> 
  <li>1</li>
  <li>2</li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
  <li>6</li>
  <li>7</li>
  <li>8</li>
  <li>9</li>
  <li><span class="active">10</span></li>
  <li>11</li>
  <li>12</li>
  <li>13</li>
  <li>14</li>
  <li>15</li>
  <li>16</li>
  <li>17</li>
  <li>18</li>
  <li>19</li>
  <li>20</li>
  <li>21</li>
  <li>22</li>
  <li>23</li>
  <li>24</li>
  <li>25</li>
  <li>26</li>
  <li>27</li>
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>31</li>
</ul>
<!--<a href="#" class="btn btn-default">Learn More</a> -->    
                    </div>
                </div>
            </div>
            <!-- /Section 3 - Right -->
        </div>
    <!-- /Page Content -->

<!-- Include footsection -->
% include("foot.tpl")
</html>