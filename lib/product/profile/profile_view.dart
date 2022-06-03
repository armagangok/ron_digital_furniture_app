import 'package:car_app/feature/controllers/preference_controller.dart';
import 'package:car_app/product/auth/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
