class InquiriesController < Spree::StoreController
	def new
		@inquiry = Inquiry.new
		render 'spree/contacts/new'
	end
end
