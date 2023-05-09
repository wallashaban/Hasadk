import '../../domain_layer/entities/authentication.dart';

class AuthenticationModel extends Authentication {
  const AuthenticationModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.userName,
    required super.telephone,
    required super.passwordResetTokenOTP,
    required super.passwordResetExpires,
    required super.updatedAt,
    required super.v,
    required super.createdAt,
    required super.role,
    required super.favouriteCompany,
    required super.likes,
    required super.favouriteProduct,
    required super.email,
    required super.token,
  });

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationModel(
      id: json['data']['user']['_id'],
      firstName: json['data']['user']['firstName'],
      lastName: json['data']['user']['lastName'],
      userName: json['data']['user']['username'],
      telephone: json['data']['user']['telephone'],
      passwordResetTokenOTP: json['data']['user']['passwordResetTokenOTP'],
      passwordResetExpires: json['data']['user']['passwordResetExpires'],
      updatedAt: json['data']['user']['updatedAt'],
      v: json['data']['user']['__v'],
      createdAt: json['data']['user']['createdAt'],
      role: json['data']['user']['role'],
      favouriteCompany: json['data']['user']['favouriteCompany'],
      likes: json['data']['user']['likes'],
      favouriteProduct: json['data']['user']['favouriteProduct'],
      email: json['data']['user']['email'],
      token: json['tpken'],
    );
  }
}
