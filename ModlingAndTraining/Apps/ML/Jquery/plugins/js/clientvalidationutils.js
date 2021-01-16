function ValidationUtils() {
    isBlank = function (strInput) {
    if ($.trim(strInput) === "")
            return true;
        else
            return false;
    }
    isValidEmail = function(strInput) {
        var inputvalue = $.trim(strInput);
        var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
        if (pattern.test(inputvalue))
            return true;
        else
            return false;

    }
    isValidWebSiteUrl = function(strInput) {
         var inputvalue = $.trim(strInput);
         var urlregex = new RegExp(
            "^(http|https|ftp)\://([a-zA-Z0-9\.\-]+(\:[a-zA-Z0-9\.&amp;%\$\-]+)*@)*((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|([a-zA-Z0-9\-]+\.)*[a-zA-Z0-9\-]+\.(com|edu|gov|int|mil|net|org|biz|arpa|info|name|pro|aero|coop|museum|[a-zA-Z]{2}))(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\?\'\\\+&amp;%\$#\=~_\-]+))*$");
         return urlregex.test(inputvalue);

     }
     isEqual = function(strInput1, strInput2) {
         var inputvalue1 = $.trim(strInput1);
         var inputvalue2 = $.trim(strInput2);
         if (inputvalue1 === inputvalue2)
             return true;
         else
             return false;

     }
     isValidUSPhone = function(strInput) {
        var inputvalue = $.trim(strInput);
        var pattern = /^\(?(\d{3})\)?[- .]?(\d{3})[- .]?(\d{4})$/;
        return pattern.test(inputvalue);   
     }
     isValidInternationalPhone = function(strInput) {
         //         var inputvalue = $.trim(strInput);
         //         var numbers = inputvalue.split(/\d/).length - 1;
         //         alert((10 <= numbers && numbers <= 20 && inputvalue.match(/^(\+){0,1}(\d|\s|\(|\)){10,20}$/)));
         //         return (10 <= numbers && numbers <= 20 && inputvalue.match(/^(\+){0,1}(\d|\s|\(|\)){10,20}$/));
     return checkInternationalPhone(strInput);

     }

     function isInteger(s) {
         var i;
         for (i = 0; i < s.length; i++) {
             // Check that current character is number.
             var c = s.charAt(i);
             if (((c < "0") || (c > "9"))) return false;
         }
         // All characters are numbers.
         return true;
     }
    
     function stripCharsInBag(s, bag) {
         var i;
         var returnString = "";
         // Search through string's characters one by one.
         // If character is not in bag, append to returnString.
         for (i = 0; i < s.length; i++) {
             // Check that current character isn't whitespace.
             var c = s.charAt(i);
             if (bag.indexOf(c) == -1) returnString += c;
         }
         return returnString;
     }

     function checkInternationalPhone(strPhone) {
         /**
         * DHTML phone number validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
         */
         // Declaring required variables
         var digits = "0123456789";
         // non-digit characters which are allowed in phone numbers
         var phoneNumberDelimiters = "()- ";
         // characters which are allowed in international phone numbers
         // (a leading + is OK)
         var validWorldPhoneChars = phoneNumberDelimiters + "+";
         // Minimum no of digits in an international phone no.
         var minDigitsInIPhoneNumber = 10;
         var bracket = 3
         strPhone = $.trim(strPhone)
         if (strPhone.indexOf("+") > 1) return false
         if (strPhone.indexOf("-") != -1) bracket = bracket + 1
         if (strPhone.indexOf("(") != -1 && strPhone.indexOf("(") > bracket) return false
         var brchr = strPhone.indexOf("(")
         if (strPhone.indexOf("(") != -1 && strPhone.charAt(brchr + 2) != ")") return false
         if (strPhone.indexOf("(") == -1 && strPhone.indexOf(")") != -1) return false
         s = stripCharsInBag(strPhone, validWorldPhoneChars);
         return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
     }



     $.extend(this, { "isBlank": isBlank, "isValidEmail": isValidEmail, "isValidWebSiteUrl": isValidWebSiteUrl, "isEqual": isEqual, "isValidPhone": isValidInternationalPhone });
}

$.extend(true, window, { MachineLearning: { ValidationUtils: ValidationUtils} });   
