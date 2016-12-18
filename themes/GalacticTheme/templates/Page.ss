<!DOCTYPE html>

<html lang="$ContentLocale">

<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    	$MetaTags
	<% base_tag %>
    <title>Galactic Donuts</title>

    <!-- Bootstrap -->
    
    <% require themedCSS("base") %>

<% require javascript("themes/GalacticTheme/javascript/jQuery-1.9.1.min.js") %>

    <% require javascript("themes/GalacticTheme/javascript/bootstrap.min.js") %>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<% require themedCSS("base") %>

<% include Header %>
	
	<div class="page">
		$Layout
	</div>

<% include Footer %>

</body>
</html>