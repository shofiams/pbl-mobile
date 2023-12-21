class ValidationError {
  String? username;
  String? password;
  ValidationError({this.username, this.password});

  factory ValidationError.fromJson(Map<String, dynamic> json) {
    return ValidationError(
        username: json['username'].toString(),
        password: json['password'].toString());
  }
}
