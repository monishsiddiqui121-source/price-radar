class Validators {
  static bool isEmail(String value) {
    return RegExp(
      r'^[^@]+@[^@]+\.[^@]+',
    ).hasMatch(value);
  }

  static bool isNotEmpty(String value) {
    return value.trim().isNotEmpty;
  }
}