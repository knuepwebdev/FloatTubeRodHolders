$.validator.addClassRules({
	name: { 
      required: true,
      minlength: 2,
      maxlength: 20
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
	}
});