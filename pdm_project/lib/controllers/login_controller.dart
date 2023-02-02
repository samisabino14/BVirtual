import 'package:flutter/material.dart';
import 'package:pdm_project/pages/readerScreens/dashboard_reader_screen.dart';
import 'package:pdm_project/pages/writerScreens/dashboard_writer_screen.dart';

class LoginController {
  String? _email;
  setEmail(String value) => _email = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth(cxt) async {
    final reader = ['sami@gmail.com', '123456'];
    final writer = ['sandro@gmail.com', '000000'];

    for (int i = 0; i < 2; i++) {
      if (_email == reader[i] && _password == reader[i + 1]) {
        Navigator.pop(cxt);
        Navigator.push(
          cxt,
          MaterialPageRoute(
            builder: (c) => const DashboardReaderPage(),
          ),
        );
      } else if (_email == writer[i] && _password == writer[i + 1]) {
        Navigator.pop(cxt);
        Navigator.push(
          cxt,
          MaterialPageRoute(
            builder: (c) => const DashboardWriterPage(),
          ),
        );
      }
    }

    return false;
  }
}
