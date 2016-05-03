<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headadminlogin.tpl")
<div class="container-fluid">
  <div class="row">
  	<div class="col-md-10 col-md-offset-1">
  		<form>
  			<div class="table-responsive ">
  				<table class="table table-hover">
                    <th>Event namn</th>
                    <th>Startdag</th>
                    <th>Slutdag</th>
                    <th>Starttid</th>
                    <th>Sluttid</th>
                    <th>Plats</th>
                    <th>Adress</th>
                    <th>Organisatör</th>
                    <th>Hemsida</th>
                    <th>Event bild</th>
                    <th>Beskrivning</th>
                    <th>Tipsare</th>
                    <th>Tipsares mail</th>
                    <th>Status</th>
				%for i in events:
                    <tr>
                        <td>{{i['event_name']}}</td>
                        <td>{{i['first_day']}}</td>
                        <td>{{i['last_day']}}</td>
                        <td>{{i['first_time']}}</td>
                        <td>{{i['last_time']}}</td>
                        <td>{{i['location']}}</td>
                        <td>{{i['adress']}}</td>
                        <td>{{i['organizer']}}</td>
                        <td>{{i['website']}}</td>
                        <td>{{i['image']}}</td>
                        <td>{{i['description']}}</td>
                        <td>{{i['tipster']}}</td>
                        <td>{{i['tipster_mail']}}</td>
                        <td>
                            <select>
                                <option>Ny</option>
                                <option>Publicera</option>
                                <option>Ta bort</option>
                            </select>
                        </td>
                    <tr/>
                %end
  				</table>
			</div>
			<button type="submit" class="btn btn-lg btn-primary">Bekräfta</button>
  		</form>
  	</div>
  </div>
</div>
<!-- Include footsection -->
% include("foot.tpl")
</html>