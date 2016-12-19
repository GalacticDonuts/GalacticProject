

<div class="col-xs-12 col-sm-4 post-summary xs-center">
	<h2>
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

	<p class="post-image">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<img src="$FeaturedImage.Fill(400,400).URL" alt="$Title" class="img-responsive img-rounded xs-center-block">
		</a>
	</p>

	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <p>
			<a href="$Link">
				<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		</p>

	<% include EntryMeta %>
</div>