<div class="header">	

<ul> 
	
	<% loop $Menu(1) %>
 		<li><a class=”$LinkingMode” href=”$Link” title=”Go to the $Title page”>$MenuTitle</a></li>
	<% end_loop %>

</ul>
</div>