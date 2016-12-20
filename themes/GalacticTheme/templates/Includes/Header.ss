<nav class="header navbar-default">
  <div class="container"> 
  <div class="row">
			<div class="col-sm-4 col-xs-6">
     <a href="/Donuts"><div class="header_logo"></div></a>
      </div>
			<div class="col-sm-8">
    <!-- Brand and toggle get grouped for better mobile display -->

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav"><% loop $Menu(1) %>
							<li class="nav_item">
								<a class="{$LinkingMode} nav_link" href="{$Link}" title="Go to the {$Title} page">
									$MenuTitle
								</a>
							</li>
						<% end_loop %>
					</ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> 

