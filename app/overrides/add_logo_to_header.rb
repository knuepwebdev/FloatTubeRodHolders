Deface::Override.new(
	:virtual_path => 'spree/shared/_header',
	:replace => 'figure#logo',
	:text => "<figure id='logo' class='columns eight' data-hook><h1>FloatTubeRodHolders.com</h1></figure>",
	:name => 'add_logo_to_header'
)
