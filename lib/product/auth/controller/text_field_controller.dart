import 'package:flutter/material.dart';

class TextFieldController {
  final TextEditingController _emailLogin =
      TextEditingController(text: "1armagangok@gmail.com");
  final TextEditingController _passwordLogin =
      TextEditingController(text: "1234567");

  TextEditingController get getEmailController => _emailLogin;
  TextEditingController get getPasswordController => _passwordLogin;
}
