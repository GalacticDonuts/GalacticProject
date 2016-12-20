<% if $CommentsEnabled %>
	<div id="$CommentHolderID" class="comments-holder-container">
		<h4><% _t('CommentsInterface_ss.POSTCOM','Post your comment') %></h4>

		<% if $AddCommentForm %>
			<% if $canPostComment %>
				<% if $ModeratedSubmitted %>
					<p id="moderated" class="message good"><% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %></p>
				<% end_if %>

				<%-- $AddCommentForm --%>
				
				<% with $AddCommentForm %> 

					<form $getAttributesHTML>

						<% with $Fields.dataFieldByName('Name') %>
							<div class="form-group">
							    <label for="name">$Title</label>
							    <input type="text" class="form-control" id="$ID" placeholder="Your Name" name="$Name">
							</div>
						<% end_with %>

						<% with $Fields.dataFieldByName('Email') %>
							<div class="form-group">
							    <label for="email">$Title</label>
							    <input type="email" class="form-control" id="$ID" placeholder="Email Address" name="$Name">
							</div>
						<% end_with %>

						<% with $Fields.dataFieldByName('URL') %>
							<div class="form-group">
							    <label for="url">$Title</label>
							    <input type="url" class="form-control" id="$ID" placeholder="Website URL" name="$Name">
							</div>
						<% end_with %>

						<% with $Fields.dataFieldByName('Comment') %>

							<div class="form-group">
							    <label for="comment">$Title</label>
							    <textarea class="form-control" placeholder="Place your comments here" rows="3" name="$Name"></textarea>
							</div>
						<% end_with %>

						<% loop $Fields %> 
							<% if $Type == "hidden" %>
								$Field
							<% end_if %>

						<% end_loop %>

						<% loop $Actions %>

							<input type="submit" name="$Name" value="$Title" class="action btn btn-default" id="$ID">

							<%-- <button type="submit" class="btn btn-default" id="$FormID">Post</button> --%>

						<% end_loop %>
						
						
					</form>

				<% end_with %>
			<% else %>
				<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if $PostingRequiredPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>.
					<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
				</p>
			<% end_if %>
		<% else %>
			<p><% _t('CommentsInterface_ss.COMMENTSDISABLED', 'Posting comments has been disabled') %>.</p>
		<% end_if %>

		<h4><% _t('CommentsInterface_ss.COMMENTS','Comments') %></h4>

		<div class="comments-holder">
			<% if $PagedComments %>
				<ul class="comments-list root-level">
					<% loop $PagedComments %>
						<li class="comment $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass">
							<% include CommentsInterface_singlecomment %>
						</li>
					<% end_loop %>
				</ul>
				<% with $PagedComments %>
					<% include CommentPagination %>
				<% end_with %>
			<% end_if %>

			<p class="no-comments-yet"<% if $PagedComments.Count %> style='display: none' <% end_if %> ><% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %></p>

		</div>

		<% if $DeleteAllLink %>
			<p class="delete-comments">
				<a href="$DeleteAllLink"><% _t('CommentsInterface_ss.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
			</p>
		<% end_if %>

		<p class="commenting-rss-feed">
			<a href="$CommentRSSLinkPage"><% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %></a> |
			<a href="$CommentRSSLink"><% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %></a>
		</p>
	</div>
<% end_if %>