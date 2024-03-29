class AppValidator {
  AppValidator._();

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Email is required";
    }

    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!emailRegExp.hasMatch(email)) {
      return "Enter a valid email";
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password is required";
    }

    if (password.length < 6) {
      return "Password must be at least 6 characters";
    }

    return null;
  }

  // validatePhoneNumber
  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return "Phone number is required";
    }

    if (phoneNumber.length < 10) {
      return "Enter a valid phone number";
    }

    return null;
  }
}
