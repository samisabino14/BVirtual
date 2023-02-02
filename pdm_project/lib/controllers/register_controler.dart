import 'package:flutter/material.dart';
import 'package:pdm_project/pages/readerScreens/dashboard_reader_screen.dart';
import 'package:pdm_project/pages/writerScreens/dashboard_writer_screen.dart';

class RegisterController {
  
  String? _email;
  setEmail(String value) => _email = value;

  String? _password;
  setPassword(String value) => _password = value;

  String? _firstname;
  setFirstname(String value) => _firstname = value;

  String? _lastname;
  setLastname(String value) => _lastname = value;

  Future<bool> auth(cxt) async {
    print(_firstname);

    return false;
  }
}
