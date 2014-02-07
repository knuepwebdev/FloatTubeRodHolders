$.validator.addMethod("validateNameField", function(value, element) {
  return this.optional(element) || /^[a-zA-Z]+$/.test(value);
}, "Name can only contain letters.");

$.validator.addMethod("validateZipCode", function(value, element) {
  return this.optional(element) || /^\d{5}([\-]?\d{4})?$/.test(value);
}, "Zipcode must be 5 digits long.");

$.validator.addMethod("validatePhone", function(value, element) {
  return this.optional(element) || /^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$/.test(value);
}, "Telephone number must be 10 digits long.");

$.validator.addMethod("validateCity", function(value, element) {
  return this.optional(element) || /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/.test(value);
}, "Invalid city.");

$.validator.addMethod("validateEmail", function(value, element) {
  return this.optional(element) || /^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*$/.test(value);
}, "Please enter a valid email address");

$.validator.addMethod("validatePasswordField", function(value, element) {
	return (this.optional(element) ||
				 (value.length >= 6 && value.length <= 20)); 
}, "Password must be at least 6 characters in length");

$.validator.addMethod("validatePasswordConfirmationField", 
											function( value, element) {
	console.log('password: ' + $('#spree_user_password').val() + ' value: ' + value + ' equal? ' + (value == $('#spree_user_password').val()));

	return (this.optional(element) || 
					value === $('#spree_user_password').val());
}, "Re-enter password to confirm");