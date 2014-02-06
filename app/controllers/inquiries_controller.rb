class InquiriesController < Spree::StoreController
	def new
		@inquiry = Inquiry.new
		render 'spree/inquiries/new'
	end

	def create
		inquiry = Inquiry.new(inquiry_params)
		if inquiry.save
			InquiryMailer.customer_inquiry(inquiry).deliver
			redirect_to main_app.new_inquiry_path, notice: "Thank you for contacting us. You should receive a reply within 24 hours"
		else
			if inquiry.errors.any?
				flash[:error] = inquiry.errors.full_messages.to_sentence
			end
			redirect_to main_app.new_inquiry_path
		end
	end

	private
	def inquiry_params
		params.require(:inquiry).permit(:first_name, :last_name, :email, :phone, :comments)
	end
end
