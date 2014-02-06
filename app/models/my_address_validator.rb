class MyAddressValidator < ActiveModel::Validator
	def validate(record)
		unless firstname_is_valid?(record.firstname)  
			record.errors[:firstname] = "is invalid"
		end

		unless lastname_is_valid?(record.lastname)
			record.errors[:lastname] = "is invalid"
		end

		unless street1_is_valid?(record.address1)
			record.errors[:street_address_1] = "is invalid"
		end

		unless street2_is_valid?(record.address2)
			record.errors[:street_address_2] = "is invalid"
		end

		unless city_is_valid?(record.city)
			record.errors[:city] = "is invalid"
		end

		unless zipcode_is_valid?(record.zipcode)
			record.errors[:zipcode] = "must be 5 digits long"
		end

		unless phone_is_valid?(record.phone)
			record.errors[:phone_number] = "must be 10 digits long"
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

	def street1_is_valid?(street)
		street.length >= 2 &&
		street.length <= 40
	end

	def street2_is_valid?(street)
		street.length <= 40
	end

	def city_is_valid?(city)
		city.length <= 30 &&
		city[/^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/] == city
	end

	def zipcode_is_valid?(zipcode)
		zipcode[/^\d{5}([\-]?\d{4})?$/] == zipcode
	end

	def phone_is_valid?(phone)
		phone[/^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$/] == phone
	end
end