class Inquiry < ActiveRecord::Base
	include ActiveModel::Validations
	validates_with MyInquiryValidator
	before_save :format_email

	private
	def format_email
		self.email = email.downcase
	end
end
