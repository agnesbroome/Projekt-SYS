<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headadminlogin.tpl")
<div class="container-fluid">
  <div class="row">
  	<div class="col-md-8 col-md-offset-2">
  		<form>
  			<div class="table-responsive">
  				<table class="table">
				{{events}}
  				</table>
			</div>
			<button type="button" class="btn btn-warning">Töm formulär</button>
			<button type="button" class="btn btn-primary">Bekräfta</button>
  		</form>
  	</div>
  </div>
</div>
<!-- Include footsection -->
% include("foot.tpl")
</html>