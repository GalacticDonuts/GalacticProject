<div class="page">	
	<div class="container">
		
		<div class="row about_header">
			
			<div class="col-sm-12">

				<h1>$Title</h1>
				<h3>Welcome to the About Us Page! Learn some interesting facts about the Galactic Donuts!</h3>
				
			</div>
		</div>

		
		<% loop $Bios %>
			<div class="row about_content">
				<div class="col-sm-4 col-xs-12 ">
					<div class="pad-bot">
						<img src="$ProfilePic.Fill(300,300).URL" class="img-responsive img-circle xs-center-block">
					</div>
				</div>
				<div class="col-sm-8 col-xs-12 xs-center">
					$Description
				</div>
			</div>
		<% end_loop %>
		
	</div>
</div>










