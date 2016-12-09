<!DOCTYPE html>

<html lang="$ContentLocale">

<head>
	$MetaTags
	
</head>
<body>

<div class="header">	

<ul> 

	<% loop $Menu(1) %>
 		<a class="$LinkingMode" href="$Link" title=”Go to the $Title page”>$MenuTitle</a>
	<% end_loop %>
</ul>
</div>
