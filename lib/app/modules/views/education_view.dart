import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tugas1/app/routes/app_pages.dart';
import 'package:tugas1/app/util/color_res.dart';
import '../controllers/education_controller.dart';

class EducationView extends GetView<EducationController> {
  const EducationView({Key? key}) : super(key: key);
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
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: CustomColor.primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColor.whiteColor,
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              controller.data[index]['jenjang'],
                              style: const TextStyle(
                                color: CustomColor.whiteColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.data[index]['name'],
                                style: const TextStyle(
                                  color: CustomColor.whiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "Alamat : ${controller.data[index]['name']}",
                                style: const TextStyle(
                                  color: CustomColor.whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
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
