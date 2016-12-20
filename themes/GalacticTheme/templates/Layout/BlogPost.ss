<div class="page">	
	<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
		
		<div class="container">
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
					<div class="col-lg-8 col-md-10 col-lg-offset-2 col-md-offset-1">
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

			<div class="row userform_content">
				<div class="col-sm-8 col-sm-offset-2">
					<%-- <img src="assets/Uploads/CyD1xjQUUAAehPl.png-large.png" class="img-responsive xs-center-block"> --%>
					
					<div class="comments-form">

						$CommentsForm

					</div>
					
				</div>
			</div>

		</div>


		$Form
		
	</div>

	<% include BlogSideBar %>
</div>