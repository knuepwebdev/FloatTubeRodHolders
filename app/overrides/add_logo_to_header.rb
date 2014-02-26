Deface::Override.new(
	:virtual_path => 'spree/shared/_header',
	:replace => 'figure#logo',
	:text => "<figure id='logo' class='columns eight' data-hook>
							<h1>
								<%= link_to Spree.t('FloatTubeRodHolders'), spree.root_path %>
							</h1>
						</figure>",
	:name => 'add_logo_to_header'
)
