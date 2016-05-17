<!DOCTYPE html>
<html lang="utf-8">
    
<!-- Include headsection and global navigation -->
% include("headadminlogin.tpl")
<div id="admin_container" class="container-fluid">
  <div class="row">
    <div class="col-md-2">
        <ul class="list-group">
            <a href="/admin/new" class="list-group-item">
            <span class="badge">{{new}}</span>
                Nya event
            </a>
            <a href="/admin/active" class="list-group-item">
            <span class="badge">{{active}}</span>
                Publicerade event
          </a>
            <a href="/admin/old" class="list-group-item">
            <span class="badge">{{old}}</span>
                Passerade event
          </a>            
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
                            <td>{{str(i['first_time'])[:-3]}}</td>
                            <td>{{str(i['last_time'])[:-3]}}</td>
                            <td>{{i['location']}}</td>
                            <td>{{i['adress']}}</td>
                            <td>{{i['organizer']}}</td>
                            <td>{{i['website']}}</td>
                            <td><img class="admin_img" src="../../{{i['image']}}" /></td>
                            <td><textarea rows="5" cols="50" readonly>{{i['description']}}</textarea></td>
                            <td>{{i['tipster']}}</td>
                            <td>{{i['tipster_mail']}}</td>
                            <input id="event_id" name="event_id" value="{{i['event_ID']}}"></input>
                            <td>
                                <select name="status">
                                    <option>{{i['status']}}</option>
                                    <option value="new">Nytt</option>
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
        <h3>Inga event att visa!</h3>
      %end
  	</div>
  </div>
</div>
<!-- Include footsection -->
% include("foot.tpl")
</html>