<% require themedCSS("base") %>
	
<div class="header">
	<div class="header_logo"></div>
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
			</div>
			<div class="col-sm-8">
				<% if $Menu(1) %>
					<ul class="nav_header">
						<% loop $Menu(1) %>
							<li class="nav_item">
								<a class="{$LinkingMode} nav_link" href="{$Link}" title="Go to the {$Title} page">
									$MenuTitle
								</a>
							</li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
		</div>
	</div>
</div>