<body class='setup_body' >
<center>
{$php_errors}
<form action='setup.php' name='mainform' method='post' enctype='multipart/form-data'>
<input id='focus' name='focus' type='image' src='images/empty.png' style='width:1px; height:1px;' >
<div class='setup_dialog'>
	<div class='setup_header'>
		<img src='themes/default/images/go_logo.png' class='center'>
		{t}GOsa - GOnicus System Administrator Setup{/t}
	</div>
	<div style="width:100%; ">

		<div class='setup_navigation'>
			<div class='setup_navigation_title'>	
			</div>
			{$navigation}		
		</div>

		<ul style='padding:0px; margin:0px; list-style-type: none;'>
			<li>
				<div class='setup_plug_header'>
					{$header}
				</div>
			</li>
			<li>
				<div class='setup_contents'>
					{$contents}
				</div>
			</li>
		</ul>
	
		<div class='setup_bottom'>
			{$bottom}
		</div>
	</div>
</div>
<input type='hidden' name='setup_goto_step' value=''>
</form>
</center>
<div style='width:100%; text-align:right'>
	{$version}
</div>

<script type='javascript'>
	document.getElementById('focus').focus();
</script>
</body>
</html>
