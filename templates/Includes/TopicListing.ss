<tr class="<% if IsSticky || IsGlobalSticky %>sticky<% end_if %> <% if IsGlobalSticky %>global-sticky<% end_if %>">
	<td class="topicName">
		<a class="topic-title" href="$Link">$Title</a>
		<p class="topic-summary">
			<% _t('BY','By') %>
			<% with FirstPost %>
				<% with Author %>
					<% if Link %>
						<a href="$Link" title="<% _t('CLICKTOUSER','Click here to view') %>"><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a>
					<% else %>
						<span>Anon</span>
					<% end_if %>
				<% end_with %>
				<% _t('ON','on') %> $Created.Long
			<% end_with %>
		</p>
	</td>
	<td class="count">
		$NumPosts
	</td>
	<td class="last-post">
		<% with LatestPost %>
			<p class="">$Created.Ago</p>
			<p class="">
				<% _t('BY','by') %> 
				<% with Author %>
					<% if Link %>
						<a href="$Link" title="<% _t('CLICKTOUSER') %> <% if Nickname %>$Nickname.XML<% else %>Anon<% end_if %><% _t('CLICKTOUSER2') %>">
							<% if Nickname %>$Nickname<% else %>Anon<% end_if %>
						</a>
					<% else %>
						<span>Anon</span>
					<% end_if %>
				<% end_with %> 
				<a href="$Link" title="<% sprintf(_t('GOTOFIRSTUNREAD','Go to the first unread post in the %s topic.'),$Title.XML) %>"><img src="forum/images/right.png" alt="" /></a>
			</p> 
		<% end_with %>
	</td>
</tr>