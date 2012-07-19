<div class="forum-header">

	<% control ForumHolder %>
		
		<p class="forum-breadcrumbs">$Breadcrumbs</p>
		<h1 class="forum-heading">$HolderSubtitle</h1>
		<p class="forum-abstract">$ForumHolder.HolderAbstract</p>

	<% end_control %>
	
	<% if Moderators %>
		<p>
			Moderators: 
			<% control Moderators %>
				<a href="$Link">$Nickname</a>
				<% if Last %>
				<% else %>,
				<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>

</div><!-- forum-header. -->
