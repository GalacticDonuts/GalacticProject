<div class="container">
	
	<div class="row about_header">
		
		<div class="col-sm-12">

			<h1>$Title</h1>
			<p>Welcome to the About Us Page! Learn some interesting facts about the Galactic Donuts!</p>
			
		</div>
	</div>

	
	<% loop $Bios %>
		<div class="row about_content">
			<div class="col-md-4 col-sm-12">
				<img src="$ProfilePic.Fill(300,300).URL" class="img-responsive img-circle">
			</div>
			<div class="col-md-8 col-sm-12">
				<div class="about_content_text">
					$Description
				</div>
			</div>
		</div>
	<% end_loop %>
	
</div>











