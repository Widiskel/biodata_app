import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1/app/util/color_res.dart';

import '../../routes/app_pages.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "WELCOME",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  color: CustomColor.whiteColor,
                  fontFamily: "cocogoose",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Widi Biodata APP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "cocogoose",
                  color: CustomColor.whiteColor),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 35,
        ),
        onPressed: () {
          Get.toNamed(Routes.homeScreen);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
