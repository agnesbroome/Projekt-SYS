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
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-responsive" src="../{{i['image']}}" alt="no image found">
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
</body>
</html>

