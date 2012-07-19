<% if BBTags %>
	<div id="BBTagsHolder" class="hide">
		<h3 class="bbcodeExamples"><% _t('AVAILABLEBB','Available BB Code tags') %></h3>
		<ul class="bbcodeExamples">
			<% control BBTags %>
				<li class="$FirstLast">
					<strong>$Title</strong><% if Description %>: $Description<% end_if %> <span class="example">$Example</span>
				</li>
			<% end_control %>
		</ul>
	</div>
<% end_if %>