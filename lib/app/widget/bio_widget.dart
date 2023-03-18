import 'package:flutter/material.dart';

import '../util/color_res.dart';

class BioInfo extends StatelessWidget {
  final String column;
  final String value;
  const BioInfo({
    Key? key,
    required this.column,
    required this.value,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50.0,
      decoration: const BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Row(children: [
        Flexible(
          child: Text(
            '$column :',
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: CustomColor.whiteColor,
                fontFamily: "cocogoose"),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Flexible(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: CustomColor.whiteColor,
            ),
          ),
        ),
      ]),
    );
  }
}
