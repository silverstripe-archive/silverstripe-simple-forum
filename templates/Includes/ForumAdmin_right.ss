<div class="title"><div style="background-image : url(cms/images/panels/EditPage.png)"><% _t('EDITPAGE','Edit Page') %></div></div>
<% include Editor_toolbar %>

<% if EditForm %>
	$EditForm
<% else %>
	<form id="Form_EditForm" action="admin?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<h1>$ApplicationName</h1>

		<p><% sprintf(_t('WELCOME',"Welcome to %s! Please choose click on one of the entries on the left pane."),$ApplicationName) %></p>
		
	</form>
<% end_if %>


<p id="statusMessage" style="visibility:hidden"></p>
