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
        % for i in events:
        <div class="tip">
            <h2>{{i['event_name']}}</h2>
            <h3>{{i['first_day']}} - {{i['last_day']}}</h3>
          <p>{{i['description']}}</p>
        </div>
        % end
        
        <!-- /Event listing  -->
    <!-- /Page Content -->
<!-- Include footsection -->
% include("foot.tpl")
</html>