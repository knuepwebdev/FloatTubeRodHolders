Deface::Override.new(
	:virtual_path => 'spree/shared/_nav_bar',
	:remove => "erb[loud]:contains('spree/shared/search')",
	:name => 'remove_search_bar'
)
