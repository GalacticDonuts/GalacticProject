<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">

	<div class="container">
		
		<article>
			<div class="row bloglanding_header">
				<div class="col-sm-12">
					<h1>$Title</h1>
					<p>Welcome to the Blogs page! Here you can read about our experiences as proud interns of SilverStripe!</p>
				</div>
			</div>

			<%-- <div class="content">$Content</div> --%>

			<% if $PaginatedList.Exists %>
				<div class="row bloglanding_content">
					<div class="col-sm-12">
						<% loop $PaginatedList %>
							<% include PostSummary %>
						<% end_loop %>
					</div>
				</div>
			<% else %>
				<p><%t Blog.NoPosts 'There are no posts' %></p>
			<% end_if %>
			
		</article>

		$Form
		$CommentsForm

	<div class="row bloglanding_content">
		<div class="col-sm-12">
			<% with $PaginatedList %>
				<% include Pagination %>
			<% end_with %>
		</div>
	</div>

</div>

<% include BlogSideBar %>