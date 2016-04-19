<!DOCTYPE html>
<html lang="en">

<!-- Include headsection and global navigation -->
% include("head.tpl")

  <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="page-header">Logga in som administratör</h1>
                    %if error == True:
                    <div class="alert alert-danger">Fel användarnamn eller lösenord!</div>
                    %end
                        <form action="/process" method="post">
                            <div class="input-group form-group">
                                <span class="input-group-addon" id="basic-addon1">Användarnamn</span><input type="text" class="form-control" aria-describedby="basic-addon1" name="id">
                            </div>
                            <div class="input-group form-group">
                                <span class="input-group-addon" id="basic-addon2">Lösenord</span><input type="password" class="form-control" aria-describedby="basic-addon2" name="pw">
                            </div>
                            <button type="submit" class="btn btn-primary">Logga in</button>
                        </form>
                </div>
            </div>
        </div>
        <!-- /Page Heading/Breadcrumbs -->
        <script src="/static/js/loginscript.js"></script> //
       

<!-- Include footsection -->
% include("foot.tpl") 
</html>