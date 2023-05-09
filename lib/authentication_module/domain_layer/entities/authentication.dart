import 'package:equatable/equatable.dart';

class Authentication extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String userName;
  final String telephone;
  final String passwordResetTokenOTP;
  final String passwordResetExpires;
  final String updatedAt;
  final int v;
  final String createdAt;
  final String role;
  final List<String> favouriteCompany;
  final List likes;
  final List<String> favouriteProduct;
  final String email;
  final String? token;

 const Authentication(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.userName,
      required this.telephone,
      required this.passwordResetTokenOTP,
      required this.passwordResetExpires,
      required this.updatedAt,
      required this.v,
      required this.createdAt,
      required this.role,
      required this.favouriteCompany,
      required this.likes,
      required this.favouriteProduct,
      required this.email,
      required this.token});

  @override
  List<Object?> get props => [
        id,
        email,
        firstName,
        lastName,
        favouriteCompany,
        userName,
        telephone,
        passwordResetExpires,
        passwordResetTokenOTP,
        updatedAt,
        v,
        createdAt,
        role,
        favouriteCompany,
        favouriteProduct,
        likes,
        token,
      ];
}
