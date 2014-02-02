class InquiryMailer < ActionMailer::Base
	default from: "inquiry@fishingusa.com"

	def customer_inquiry(inquiry)
		@inquiry = inquiry
		mail to: "nupexpress@aol.com", subject: "FishingUSA Customer Comments"
	end
end