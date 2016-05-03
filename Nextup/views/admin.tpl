<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headadminlogin.tpl")
<div id="admin_container" class="container-fluid">
  <div class="row">
    <div class="col-md-2">
        <ul class="list-group">
            <li class="list-group-item">
            <span class="badge">0</span>
                Nya event
            </li>
            <li class="list-group-item">
            <span class="badge">2</span>
                Publicerade event
          </li>
            <li class="list-group-item">
            <span class="badge">10</span>
                Passerade event
          </li>            
        </ul>
    </div>
  	<div class="col-md-10">
        %if len(events) > 0:
            <form action="/admin_process" method="post">
                <div class="table-responsive ">
                    <table class="table table-hover">
                        <th>Eventnamn</th>
                        <th>Startdag</th>
                        <th>Slutdag</th>
                        <th>Starttid</th>
                        <th>Sluttid</th>
                        <th>Plats</th>
                        <th>Adress</th>
                        <th>Organisatör</th>
                        <th>Hemsida</th>
                        <th>Eventbild</th>
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
                            <input id="event_id" name="event_id" value="{{i['event_ID']}}"></input>
                            <td>
                                <select name="status">
                                    <option value="new">Ny</option>
                                    <option value="active">Publicera</option>
                                    <option value="old">Ta bort</option>
                                </select>
                            </td>
                        <tr/>
                    %end
                    </table>
                </div>
                <button type="submit" class="btn btn-lg btn-primary">Bekräfta</button>
            </form>
      %else:
        <h3>Inga nya event att visa!</h3>
      %end
  	</div>
  </div>
</div>
<!-- Include footsection -->
% include("foot.tpl")
</html>