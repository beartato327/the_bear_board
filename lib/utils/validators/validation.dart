

class TBBValidator{
  static String? validateEmail(String? val){
    if(val == null || val.isEmpty){
      return 'Email is required';
    }

    // REGEX for email validation
    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegEx.hasMatch(val)){
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? val){
    if(val == null || val.isEmpty){
      return 'Password is required';
    }

    // Checking password length
    if(val.length < 6){
      return 'Password must be at least 6 characters long';
    }

    // Checks for uppercase letters
    if (!val.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one uppercase letter.';
    }

    // Checks for numbers
    if (!val.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one number.';
    }

    // Checks for special characters
    if (!val.contains(RegExp(r'[!@#$%^&*(),.?]'))){
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  // Validate phone number
  static String? validatePhoneNumber(String? val){
    if(val == null || val.isEmpty){
      return 'Phone number is required';
    }

    //Regular expression for phone number validation (assuming a 10-digit US phone number format)
    final phoneRegEx = RegExp(r'^\d{10}$');

    if(!phoneRegEx.hasMatch(val)){
      return 'Invalid phone number format (10 digits required)';
    }

    return null;
  }

}