$.validator.addClassRules({
	name_field: { 
      required: true,
      minlength: 2,
      maxlength: 20,
      validateNameField: true
	},
	street1: {
		required: true,
		maxlength: 40
	},
	street2: {
		maxlength: 40
	},
	city: {
		required: true,
		maxlength: 30,
		validateCity: true
	},
	zipcode: {
		required: true,
		validateZipCode: true
	},
	phone: {
		required: true,
		validatePhone: true
	},
	email_field: {
		required: true,
		validateEmail: true
	},
	password_field: {
		required: true,
		minlength: 6,
		maxlength: 20
	},
	comments: {
		required: true,
		maxlength: 3000
	}
});