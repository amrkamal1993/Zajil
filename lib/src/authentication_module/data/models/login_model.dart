class LoginModel {
  String? userName;
  String? password;

  LoginModel({this.userName, this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      userName: json['userName'] as String?,
      password: json['password'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (password != null) {
      data['password'] = password;
    }
    return data;
  }
}
