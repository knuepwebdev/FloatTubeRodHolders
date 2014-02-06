class MyInquiryValidator < ActiveModel::Validator
	def validate(record)
		unless firstname_is_valid?(record.first_name)
			record.errors[:first_name] = " is invalid"
		end

		unless lastname_is_valid?(record.last_name)
			record.errors[:last_name] = " is invalid"
		end

		unless email_is_valid?(record.email)
			record.errors[:email] = " is invalid"
		end

		unless phone_is_valid?(record.phone)
			record.errors[:phone_number] = " is invalid"
		end

		unless comments_are_valid?(record.comments)
			record.errors[:comments] = " you entered are too long"
		end
	end

	private
	def firstname_is_valid?(firstname)
		firstname.length >= 2 && 
		firstname.length <= 20 && 
		firstname[/[a-zA-Z]+/]  == firstname
	end

	def lastname_is_valid?(lastname)
		lastname.length >= 2 && 
		lastname.length <= 20 &&
		lastname[/[a-zA-Z]+/] == lastname
	end

	def email_is_valid?(email)
		email.length <= 60 &&
		email[/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i] == email
	end

	def phone_is_valid?(phone)
		phone[/^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$/] == phone
	end

	def comments_are_valid?(comments)
		comments.length <= 3000
	end
end