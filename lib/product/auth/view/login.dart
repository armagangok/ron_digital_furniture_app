import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../feature/components/general_textfield.dart';
import '../../../feature/controllers/preference_controller.dart';
import '../../root/view/root_view.dart';
import '../controller/text_field_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final PreferenceController controller = PreferenceController();
  final TextFieldController textController = TextFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                physics: const ClampingScrollPhysics(),
                children: [
                  const Text("mail"),
                  GeneralTextField1(
                    controller: textController.getEmailController,
                  ),
                  const SizedBox(height: 40),
                  const Text("password"),
                  GeneralTextField1(
                    controller: textController.getPasswordController,
                    isObscure: true,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () async {
                      // await rememberMeDialog(context);
                      await keepMeloggedInDialog(context);
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //

  Future<void> rememberMeDialog(context) async {
    final PreferenceController controller = PreferenceController();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Remember me?"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await controller.saveUserInfo(
                          UserModel(
                            email: textController.getEmailController.text,
                            password: textController.getPasswordController.text,
                          ),
                        );

                        Get.back();
                      },
                      child: const Text("Yes"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("No"),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> keepMeloggedInDialog(context) async {
    final PreferenceController controller = PreferenceController();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("keep me logged in?"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await controller.saveToken(true);
                        Get.to(RootView());
                      },
                      child: const Text("Yes"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.saveToken(false);
                        Get.to(RootView());
                      },
                      child: const Text("No"),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
