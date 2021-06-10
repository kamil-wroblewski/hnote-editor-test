import 'dart:io';
import 'package:path/path.dart';


class User{
  String userName;
  String email;
  String password;

  User({this.userName, this.email, this.password}){
   print('User created ' + userName + ' ' + email);
   print(this.toJson());
   print(Directory.current);
  }

  String getUserName() => this.userName;
  String getEmail() => this.email;
  String getPsw() => this.password;

  void setUserName(String newUsername) => this.userName = newUsername;
  void setEmail(String newEmail) => this.email = newEmail;
  void setPassword(String newPassword) => this.password = newPassword;

  Map<String, dynamic> toJson() => {
    'username': userName,
    'email': email,
    'pswd': password,
  };

  User.fromJson(Map<String, dynamic> json) : userName = json['name'],
                                             email = json['email'],
                                             password = json['pswd'];
}