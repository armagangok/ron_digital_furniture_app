import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature/controllers/preference_controller.dart';
import '../auth/view/login.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  PreferenceController controller = PreferenceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
          onPressed: () async {
            await controller.saveToken(false);
            Get.to(LoginScreen());
          },
        ),
      ),
    );
  }
}
