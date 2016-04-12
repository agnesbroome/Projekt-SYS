% include("head.tpl")
  <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-8">
                <h1 class="page-header">Logga in</h1>
                %if error == True:
                <div class="alert alert-danger">Något gick fel</div>
                %end
                <form action="/process" method="post">
                    <div class="input-group form-group">
                        <span class="input-group-addon" id="basic-addon3">Användare</span>
                        <input type="text" class="form-control" aria-describedby="basic-addon3" name="id">
                    </div>
                    <div class="input-group form-group">
                        <span class="input-group-addon" id="basic-addon3">Lösenord</span>
                        <input type="password" class="form-control" aria-describedby="basic-addon3" name="pw">
                    </div>
                    <button type="submit" class="btn btn-primary">Logga in</button>
                </form>
            </div>
        </div>
       

% include("foot.tpl")   