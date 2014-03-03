class InquiryMailer < ActionMailer::Base
	default from: "customercomments@floattuberodholders.com"

	def customer_inquiry(inquiry)
		@inquiry = inquiry
		mail to: "info@floattuberodholders.com", subject: "FloatTubeRodHolders.com Customer Comments"
	end
end