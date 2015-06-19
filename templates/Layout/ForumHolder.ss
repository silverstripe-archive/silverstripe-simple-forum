<% include ForumHeader %>
<% include ForumHeaderForms %>
<table class="forum-topics">
	<% if GlobalAnnouncements %>
		<tr class="category">
			<td colspan="4"><h2><% _t('ANNOUNCEMENTS', 'Announcements') %></h2></td>
		</tr>
		<% loop GlobalAnnouncements %>
			<% include ForumHolder_List %>
		<% end_loop %>
	<% end_if %>

	<% if ShowInCategories %>
		<% loop Forums %>
			<tr class="category"><td colspan="4">$Title</td></tr>
			<tr class="category">
				<th><h2><% if Count = 1 %><% _t('FORUM','Forum') %><% else %><% _t('FORUMS', 'Forums') %><% end_if %></h2></th>
				<th class="threads"><h4><% _t('THREADS','Threads') %></h4></th>
				<th class="posts"><h4><% _t('POSTS','Posts') %></h4></th>
				<th><h4><% _t('LASTPOST','Last Post') %></h4></th>
			</tr>
			<% loop CategoryForums %>
				<% include ForumHolder_List %>
			<% end_loop %>
		<% end_loop %>
	<% else %>
		<tr class="category">
			<td><h2><% _t('FORUM','Recent Discussions') %></h2></td>
			<td class="threads"><h4><% _t('THREADS','Threads') %></h4></td>
			<td class="posts"><h4><% _t('POSTS','Posts') %></h4></td>
			<td><h4><% _t('LASTPOST','Last Post') %></h4></td>
		</tr>
		<% loop Forums %>
			<% include ForumHolder_List %>
		<% end_loop %>
	<% end_if %>
</table>

<% include ForumFooter %>