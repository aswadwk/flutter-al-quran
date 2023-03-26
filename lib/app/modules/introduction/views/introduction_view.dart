import 'package:al_quran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Al-Quran Apps",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              "Bacalah",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 300,
                height: 300,
                child: Lottie.asset('assets/animations/splash_screen.json'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                'Ngaji Yuk',
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
