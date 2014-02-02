class Inquiry < ActiveRecord::Base
	before_save :format_email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :first_name, presence:true, length: { maximum: 20 }
	validates :last_name, length: { maximum: 20 }
	validates :email, presence: true,
										format: { with: VALID_EMAIL_REGEX }
	validates :phone, length: { maximum: 20 }
	validates :comments, presence: true

	private
	def format_email
		self.email = email.downcase
	end
end