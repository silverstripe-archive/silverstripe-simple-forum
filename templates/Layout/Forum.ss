<% include ForumHeader %>

<% if ForumAdminMsg %>
	<p class="forum-message-admin">$ForumAdminMsg</p>
<% end_if %>

<% if CurrentMember.isSuspended %>
	<p class="forum-message-suspended">
		$CurrentMember.ForumSuspensionMessage
	</p>
<% end_if %>

<% if ForumPosters = NoOne %>
	<p class="message error"><% _t('READONLYFORUM', 'This Forum is read only. You cannot post replies or start new threads') %></p>
<% end_if %>

<div class="forum-features">
	<% if getStickyTopics(0) %>
		<table class="forum-sticky-topics" class="topicList" summary="List of sticky topics in this forum">
			<tr class="category">
				<td colspan="4">
					<% _t('ANNOUNCEMENTS', 'Announcements') %>
					<% if canPost %>
						<a href="{$Link}starttopic" class="new-topic" title="<% _t('NEWTOPIC','Click here to start a new topic') %>"><img src="forum/images/forum_startTopic.gif" alt="<% _t('NEWTOPICIMAGE','Start new topic') %>" /></a>
					<% end_if %>
				</td>
			</tr>
			<% control getStickyTopics(0) %>
				<% include TopicListing %>
			<% end_control %>
		</table>
	<% end_if %>
	<% include ForumHeaderForms %>
	<table class="forum-topics" summary="List of topics in this forum">
		<tr class="category">
			<td colspan="4">
				<h2><% _t('THREADS', 'Threads') %></h2>
				<% if canPost %>
					<a href="{$Link}starttopic" class="new-topic" title="<% _t('NEWTOPIC','Click here to start a new topic') %>"><img src="forum/images/forum_startTopic.gif" alt="<% _t('NEWTOPICIMAGE','Start new topic') %>" /></a>
				<% end_if %>
			</td>
		</tr>
		<tr class="topic-title-row">
			<th class="odd topic"><h4><% _t('TOPIC','Topic') %></h4></th>
			<th class="odd posts"><h4><% _t('POSTS','Posts') %></h4></th>
			<th class="even last-post"><h4><% _t('LASTPOST','Last Post') %></h4></th>
		</tr>
		<% if Topics %>
			<% control Topics %>
				<% include TopicListing %>
			<% end_control %>
		<% else %>
			<tr>
				<td colspan="3" class="forumCategory"><% _t('NOTOPICS','There are no topics in this forum, ') %><a href="{$Link}starttopic" title="<% _t('NEWTOPIC') %>"><% _t('NEWTOPICTEXT','click here to start a new topic') %>.</a></td>
			</tr>
		<% end_if %>
	</table>

	<% if Topics.MoreThanOnePage %>
		<p>
			<% if Topics.PrevLink %><a style="float: left" href="$Topics.PrevLink">	&lt; <% _t('PREVLNK','Previous Page') %></a><% end_if %>
			<% if Topics.NextLink %><a style="float: right" href="$Topics.NextLink"><% _t('NEXTLNK','Next Page') %> &gt;</a><% end_if %>
			
			<% control Topics.Pages %>
				<% if CurrentBool %>
					<strong>$PageNum</strong>
				<% else %>
					<a href="$Link">$PageNum</a>
				<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	
</div><!-- forum-features. -->

<% include ForumFooter %>