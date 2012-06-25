<% include ForumHeader %>
	<div class="forumHolderFeatures">
		
		<div id="SortThreadsBy">
			<p><% _t('SORTTHREADSBY', 'Sort threads by:') %> <a<% if Method = posts %> class="current"<% end_if %> href="{$Link}popularthreads?by=posts"><% _t('POSTCOUNT', 'Post count') %></a> | <a<% if Method = views %> class="current"<% end_if %> href="{$Link}popularthreads?by=views"><% _t('NUMVIEWS', 'Number of views') %></a></p>
		</div>
		
		<table id="ThreadsList">
			<tr class="head">
				<th><% _t('POSTS', 'Posts') %></th>
				<th><% _t('VIEWS', 'Views') %></th>
				<th><% _t('TITLE', 'Title') %></th>
				<th><% _t('DATECREATED', 'Date created') %></th>
			</tr>
			
			<% control Threads %>
				<tr class="$EvenOdd">
					<td>$Posts.Count</td>
					<td>$NumViews</td>
					<td><a href="$Link">$Title</a></td>
					<td>$Created.Nice</td>
				</tr>
			<% end_control %>
		</table>
		
		<% if Threads.MoreThanOnePage %>
			<div id="ThreadsPagination">
				<p>
					<% if Threads.NotFirstPage %>
						<a class="prev" href="$Threads.PrevLink" title="View the previous page"><% _t('PREV', 'Prev') %></a>
					<% end_if %>
				
					<span>
				    	<% control Threads.PaginationSummary(4) %>
							<% if CurrentBool %>
								$PageNum
							<% else %>
								<% if PageNum %>
									<a href="$Link">$PageNum</a>
								<% else %>
									...
								<% end_if %>
							<% end_if %>
						<% end_control %>
					</span>
				
					<% if Threads.NotLastPage %>
						<a class="next" href="$Threads.NextLink"><% _t('NEXT', 'Next') %></a>
					<% end_if %>
				</p>
			</div>
		<% end_if %>
	</div>
	
<% include ForumFooter %>