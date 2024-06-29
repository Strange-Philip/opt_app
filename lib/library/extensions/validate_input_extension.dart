extension Validator on String {
  // Validate password
  (bool, String?) get isValidPassword {
    if (length < 8) {
      return (false, 'Password must be more than 8 characters');
    }

    final hasUppercase = contains(RegExp(r'[A-Z]'));
    if (!hasUppercase) {
      return (false, 'Password must contain uppercase characters');
    }

    final hasDigits = contains(RegExp(r'[0-9]'));
    if (!hasDigits) {
      return (false, 'Password must contain digits');
    }

    final hasLowercase = contains(RegExp(r'[a-z]'));
    if (!hasLowercase) {
      return (false, 'Password must contain lowercase characters');
    }

    final hasSpecialCharacters = contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (!hasSpecialCharacters) {
      return (false, 'Password must contain special characters');
    }

    return (true, null);
  }

  bool get isValidPasswordLength => length >= 8;

  // Validate username
  (bool, String?) get isValidUsername {
    if (isEmpty) {
      return (false, 'Username cannot be empty');
    }

    if (length < 3) {
      return (false, 'Username must be more than 3 characters');
    }

    if (startsWith(RegExp(r'^[0-9]'))) {
      return (false, 'Username cannot start with a number');
    }

    if (length > 50) {
      return (false, 'Username cannot be more than 20 characters');
    }

    // if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(this)) {
    //   return (false, 'Username must be alphanumeric');
    // }

    return (true, null);
  }

  // Validate email
  (bool, String?) get isValidEmail {
    if (isEmpty) {
      return (false, 'Email cannot be empty');
    }

    if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[.]+[a-zA-Z0-9]+$').hasMatch(this)) {
      return (false, 'Email is invalid');
    }

    return (true, null);
  }

  // Validate phone number
  (bool, String?) get isValidPhoneNumber {
    String phoneNumber = this;
    final digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length != 10) {
      return (false, 'Input must have exactly 10 digits.');
    }

    if (phoneNumber.isEmpty) {
      return (false, 'Phone number cannot be empty');
    }

    return (true, null);
  }

  // Validate Email Verification Code
  (bool, String?) get isValidEmailVerificationCode {
    if (isEmpty) {
      return (false, 'OTP cannot be empty');
    }

    if (length != 6) {
      return (false, 'OTP must be 6 characters');
    }

    return (true, null);
  }
}

bool validatePass(String val) {
  if (val.isEmpty) {
    return false;
  } else if (val.length < 6) {
    return false;
  } else if (val.toLowerCase() == "password") {
    return false;
  } else {
    return true;
  }
}

bool validEmail(String value) {
  Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@'
      r'((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])'
      r'|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern as String);
  return (!regex.hasMatch(value.trim())) ? false : true;
}

extension Formater on String {
  String get formatPhoneNumber {
    String input = this;
    final digitsOnly = input.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length != 10) {
      throw FormatException("Input must have exactly 10 digits.");
    }
    final areaCode = digitsOnly.substring(0, 3);
    final firstPart = digitsOnly.substring(3, 6);
    final secondPart = digitsOnly.substring(6, 10);

    return '($areaCode) $firstPart-$secondPart';
  }
}
