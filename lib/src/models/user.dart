import 'package:flutter/cupertino.dart';
//import 'package:intl/intl.dart' show DateFormat;

enum UserState { available, away, busy }

class User {
  String id = UniqueKey().toString();
  String firstName;
  String lastName;
  String email;
  String avatar;
  String address;
  UserState userState;
  String phoneNumber;

  User.init();

  User.basic(this.firstName, this.lastName, this.avatar, this.userState);

  User.advanced(this.firstName, this.lastName, this.email, this.avatar,
      this.address, this.userState, this.phoneNumber);

  User getCurrentUser() {
    return User.advanced(
        'Andrew',
        'R. Whitesides',
        'andrew@gmail.com',
        'img/user2.jpg',
        '4600 Isaacs Creek Road Golden, IL 62339',
        UserState.available,
        "1234567890");

  getDateOfBirth() {
    return DateFormat('yyyy-MM-dd').format(this.dateOfBirth);

  }
}
