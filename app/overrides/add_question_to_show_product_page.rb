Deface::Override.new(
	:virtual_path => "spree/products/_cart_form",
	:replace_contents => "#product-variants .product-section-title",
	:text => "<%= Spree.t('On which side of your float tube would you like your rod holders?') %>",
	:name => "add_question_to_show_product_page"
)
