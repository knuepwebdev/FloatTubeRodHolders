class InquiriesController < Spree::StoreController
	def new
		@inquiry = Inquiry.new
		render 'spree/inquiries/new'
	end

	def create
		#validate the inquiries form on both the front-end and the back-end
		#save the inquiry in database, and send email to admin
		inquiry = Inquiry.new(inquiry_params)
		if inquiry.save
			InquiryMailer.customer_inquiry(inquiry).deliver
			redirect_to main_app.new_inquiry_path, notice: "Thank you for contacting us. You should receive a reply within 24 hours"
		else
			redirect_to main_app.new_inquiry_path, flash: { error: "An error has occured" }
		end
	end

	private
	def inquiry_params
		params.require(:inquiry).permit(:first_name, :last_name, :email, :phone, :comments)
	end
end
