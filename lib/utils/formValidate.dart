

extension FormValidate on String {

  bool get validatePassword {
    if (contains(RegExp(r'[a-z]')) &&
        contains(RegExp(r'[A-Z]')) &&
        contains(RegExp(r'[!@#\$%&*]'))) {
      return false;
    }
    return true;
  }

  bool get validateName {
    String a = this[0];
    if (length > 5) {
      return false;
    }
    return true;
  }

  bool get validateEmail {
    if (contains("@") && contains(".")) {
      return false;
    }
    return true;
  }
}
