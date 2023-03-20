import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tugas1/app/routes/app_pages.dart';
import 'package:tugas1/app/util/color_res.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widget/bio_widget.dart';
import '../controllers/bio_controller.dart';

class BioView extends GetView<BioController> {
  const BioView({Key? key}) : super(key: key);
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
              Expanded(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 20.0,
                    ),
                    BioInfo(
                      column: 'Asal',
                      value: 'Tuban',
                    ),
                    BioInfo(
                      column: 'Umur',
                      value: '2*',
                    ),
                    BioInfo(
                      column: 'Tanggal Lahir',
                      value: '09/06',
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.height * 0.1,
                width: Get.width,
                decoration: BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      color: CustomColor.whiteColor,
                      icon: const FaIcon(FontAwesomeIcons.link),
                      onPressed: () async {
                        if (await canLaunchUrl(controller.weburl)) {
                          await launchUrl(controller.weburl);
                        } else {
                          throw 'Could not launch Website';
                        }
                      },
                    ),
                    IconButton(
                      color: CustomColor.whiteColor,
                      icon: const FaIcon(FontAwesomeIcons.git),
                      onPressed: () async {
                        if (await canLaunchUrl(controller.github)) {
                          await launchUrl(controller.github);
                        } else {
                          throw 'Could not launch Instagram';
                        }
                      },
                    ),
                  ],
                ),
              )
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
                  Get.offNamed(Routes.homeScreen);
                }),
          ),
        ],
      ),
    );
  }
}
