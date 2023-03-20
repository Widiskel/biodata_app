import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tugas1/app/routes/app_pages.dart';
import 'package:tugas1/app/util/color_res.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                      color: CustomColor.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  height: Get.height * 0.35,
                  width: Get.width,
                  child: Column(
                    children: [
                      const Flexible(
                        child: SizedBox(
                          height: 50.0,
                        ),
                      ),
                      Flexible(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundColor: CustomColor.secondaryColor2,
                          child: Image.asset(
                            "assets/img/icon.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Widianto Eka Saputro",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whiteColor,
                            fontFamily: "cocogoose"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: CustomColor.primaryColor,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: CustomColor.secondaryColor,
                      onTap: () {
                        Get.toNamed(Routes.bioScreen);
                      },
                      child: const SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.idCard,
                            size: 40,
                            color: CustomColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: CustomColor.primaryColor,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: CustomColor.secondaryColor,
                      onTap: () {
                        Get.toNamed(Routes.eduScreen);
                      },
                      child: const SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.graduationCap,
                            size: 40,
                            color: CustomColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: Get.height * 0.9),
              child: const Text(
                "Copyright by : Widianto Eka S",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.primaryColor,
                    fontFamily: "cocogoose"),
              ),
            ),
          ),
          // back icon
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: IconButton(
                color: CustomColor.whiteColor,
                icon: const FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: 40,
                ),
                onPressed: () {
                  Get.toNamed(Routes.onBoarding);
                }),
          ),
        ],
      ),
    );
  }
}
