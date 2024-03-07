bool validateEmail(String email) {
  String emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
  RegExp regex = RegExp(emailRegex);
  return regex.hasMatch(email);
}

bool validatePassword(String password) {
  String passwordRegex =
      r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&(),])[A-Za-z\d@$!%*?&(),]{8,16}$';
  RegExp regex = RegExp(passwordRegex);
  return regex.hasMatch(password);
}
