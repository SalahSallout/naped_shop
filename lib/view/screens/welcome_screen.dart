import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naped_shop/utils/theme.dart';
import 'package:naped_shop/view/widgets/text_utils.dart';

import '../../routes/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/welcome.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: TextUtils(
                    text: "Wellcome",
                    fontsize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    underline: TextDecoration.none,
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils(
                          text: "Nabed",
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 33, 216, 39),
                          underline: TextDecoration.none,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                          text: "Shop",
                          fontsize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underline: TextDecoration.none,
                        )
                      ],
                    )),
                const SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12)),
                    onPressed: () {
                      Get.offNamed(Routes.LoginScreen);
                    },
                    child: TextUtils(
                      text: "Get Star",
                      fontsize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      underline: TextDecoration.none,
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                      text: "Don't have an Account?",
                      fontsize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.SignupScreen);
                        },
                        child: TextUtils(
                          text: "Sign Up",
                          fontsize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          underline: TextDecoration.underline,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
