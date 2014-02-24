Deface::Override.new(
	:virtual_path => 'spree/shared/_footer',
	:replace_contents => '#footer-left',
	:text => "<p>Copyright &copy; 2014 FloatTubeRodHolders.com. All Rights Reserved</p>",
	:name => "change_footer"
)
