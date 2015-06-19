<% control ForumHolder %>
	<div class="forum-header-forms">

		<div class="forum-search-bar">
			<form class="forum-search" action="$Link(search)" method="get">
				<fieldset>
					<label for="search-text"><% _t('SEARCHBUTTON','Search') %></label>
					<input id="search-text" class="text active" type="text" name="Search" value="$Query.ATT" />
					<input class="submit action" type="submit" value="<% _t('SEARCHBUTTON','L') %>"/>
				</fieldset>	
			</form>
		</div>

		<% if NumPosts %>
			<p class="forumStats">
				$NumPosts 
				<strong><% _t('POSTS','Posts') %></strong> 
				<% _t('IN','in') %> $NumTopics <strong><% _t('TOPICS','Topics') %></strong> 
				<% _t('BY','by') %> $NumAuthors <strong><% _t('MEMBERS','members') %></strong>
			</p>
		<% end_if %>

		<form class="forum-jump" action="#">
			<label for="forum-jump-select"><% _t('JUMPTO','Jump to:') %></label>
			<select id="forum-jump-select" onchange="if(this.value) location.href = this.value">
				<option value=""><% _t('JUMPTO','Jump to:') %></option>
				<!-- option value=""><% _t('SELECT','Select') %></option -->
				<% if ShowInCategories %>
					<% control Forums %>
						<optgroup label="$Title">
							<% control CategoryForums %>
								<% if can(view) %>
									<option value="$Link">$Title</option>
								<% end_if %>
							<% end_control %>
						</optgroup>
					<% end_control %>
				<% else %>
					<% control Forums %>
						<% if can(view) %>
							<option value="$Link">$Title</option>
						<% end_if %>
					<% end_control %>
				<% end_if %>
			</select>
		</form>
		<div class="clear"></div>
	</div><!-- forum-header-forms. -->
<% end_control %>	