<!DOCTYPE html>

<html lang="utf-8">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NextUP!</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/static/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Mr+Dafoe' rel='stylesheet' type='text/css'>
    <link href="/static/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><p id="logo">Next UP!</p></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../events">Eventsamling</a>
                    </li>
                    <li>
                        <a href="../tips">Tipsa om event</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Kontakt <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../about">Om oss</a>
                            </li>
                            <li>
                                <a href="../contact">Kontakta oss</a>
                            </li>
                            <li>
                                <a href="../faq">FAQ</a>
                            </li>                            
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- /Navigation -->
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
                    <li><a href="/events">Eventsamling</a>
                    </li>
                    <li class="active">Eventsida</li>
                </ol>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->

        <!-- Eventpage -->
        <main id="event_page">
            %if len(single) < 1:
                <div class="alert alert-danger">Eventet du letar efter hittades inte!</div>
            %end
            %for i in single:
                <div id="event_page", class="headevent">
                    <h2>{{i['event_name']}}</h2>  
                </div>
                <div class="row" >
                    <div class="col-md-6" id="divforimg" >
                        <img class="img-responsive" src="../{{i['image']}}" alt="no image found" id="imgevent">
                    </div>  
                    <div id="eventinfo" class="col-md-6">
                        <table class="table-hover table-condensed table-borderless">
                            <tbody>
                                <tr>
                                    <th>NÄR</th>
                                    %time_start = str(i['first_time'])[:-3]
                                    %time_end = str(i['last_time'])[:-3]
                                    %if len(time_end) == 4:
                                        %time_end = "0"+time_end
                                        %end
                                    %if len(time_start) == 4:
                                        %time_start = "0"+time_start
                                        %end

                                    <td>
                                        <strong>{{i['first_day']}}</strong><small> Kl. {{time_start}}</small> till <strong> 
                                        {{i['last_day']}}</strong><small> Kl. {{time_end}}</small>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th>VAR</th>
                                    <td>{{i['location']}}</td>
                                </tr>
                                <tr>
                                    <th>ADRESS</th>
                                    <td>{{i['adress']}}</td>
                                </tr>
                                 <tr>
                                     <th>ARRANGÖR</th>
                                    <td>{{i['organizer']}}</td>
                                </tr>
                                <tr>
                                    <th>WEBBPLATS</th>
                                    <td><a href="{{i['website']}}" target="_blank">Länk till arrangörens sida</a></td>
                                </tr>
                                <tr>
                                    <th>KATEGORI</th>
                                    <td>
                                    %for i in categories:
                                        <div class="single_cat">{{i['category_type']}}</div>
                                    %end
                                    </td>
                                </tr>
                                %for i in single:
                            </tbody>
                        </table>
                    </div>
                    </div>
                    <div id="description">
                        <p>{{i['description']}}</p>
                    </div>
                    <div id="tipster">
                        <p>Lagt till av: <strong>{{i['tipster']}} </strong></p>
                    </div>
            %end

                   <!--  <div class="col-md-12 categories_symbols">
                        <i class="fa fa-cutlery fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-music fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-glass fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-paint-brush fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-hand-peace-o fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-cc-visa fa-2x" aria-hidden="true"></i>
                        <i class="fa fa-question-circle-o fa-2x" aria-hidden="true"></i>
                    <hr>
                    </div> -->
        </main>
    </div>
        <!-- /Eventpage -->
    <!-- /Page Content -->
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p id="copy">Copyright &copy; NextUP! 2016</p>
            </div>
        </div>
    </footer>
<!-- jQuery -->
<script src="../static/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../static/js/bootstrap.min.js"></script>
<!-- Script for this page -->
<script src="../static/js/singleevent.js"></script>
</body>
</html>

