class InquiriesController < Spree::StoreController
	def new
		@inquiry = Inquiry.new
		render 'spree/inquiries/new'
	end
end
