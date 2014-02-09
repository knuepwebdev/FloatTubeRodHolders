Deface::Override.new(
	:virtual_path => 'spree/shared/_nav_bar',
	:set_attributes => 'nav#top-nav-bar',
	:attributes => { :id => 'top-nav-bar', :class => 'columns eight' },
	:name => 'change_top_nav_bar_width'
)
