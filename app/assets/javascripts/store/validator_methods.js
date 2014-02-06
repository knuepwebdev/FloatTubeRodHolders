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
