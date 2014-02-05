$.validator.addMethod("validateZipCode", function(value, element) {
  return this.optional(element) || /^\d{5}([\-]?\d{4})?$/.test(value);
}, "Zipcode must be 5 digits long.");

$.validator.addMethod("validatePhone", function(value, element) {
  return this.optional(element) || /^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$/.test(value);
}, "Telephone number must be 10 digits long.");

$.validator.addMethod("validateCity", function(value, element) {
  return this.optional(element) || /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/.test(value);
}, "Invalid city.");