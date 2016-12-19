<div class="page">	
	<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
		
		<div class="conatiner">
			<article>	
				
				<div class="row blogPost_profile_header">
					<div class="col-sm-12">
						
						<img src="$Authors.First.BlogProfileImage.Fill(200,200).URL" class="img-responsive img-circle center-block">

						<p></p>
						<h2>$Authors.First.FirstName</h2>
						<p>$Authors.First.BlogProfileSummary</p>
					
					</div>
				</div>

			
				<div class="row blogPost_content center-block">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="blogPost_title">
							<h1>$Title</h1>
						</div>
							<div class="content">
								$Content
							</div>
						<% include EntryMeta %>
					</div>
				</div>

				<%-- <% if $FeaturedImage %>
					<p class="post-image">
						<img src="$FeaturedImage.Fill(400,400).URL" alt="$Title" class="img-responsive img-rounded">
					</p>
				<% end_if %> --%>
				
			</article>
		</div>


		$Form
		$CommentsForm
	</div>

	<% include BlogSideBar %>
</div>