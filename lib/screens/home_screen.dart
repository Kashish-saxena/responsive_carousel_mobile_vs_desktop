import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_vs_mobile/utils/color_constants.dart';
import 'package:web_vs_mobile/utils/string_constants.dart';
import 'package:web_vs_mobile/widgets/card.dart';

class CarouselInDifferentDevices extends StatefulWidget {
  const CarouselInDifferentDevices({super.key});

  @override
  State<CarouselInDifferentDevices> createState() =>
      _CarouselInDifferentDevicesState();
}

class _CarouselInDifferentDevicesState
    extends State<CarouselInDifferentDevices> {
  List<Widget> courses = [
    const CardWidget(
        name: "AI & Automation",
        image: "assets/images/ai.png",
        description: StringConstants.description1),
    const CardWidget(
        name: "Data & Analytics",
        image: "assets/images/data_analytics.png",
        description: StringConstants.description2),
    const CardWidget(
        name: "Digital Transformation",
        image: "assets/images/digital_automation.png",
        description: StringConstants.description3),
    const CardWidget(
        name: "Cloud Offering",
        image: "assets/images/cloud.png",
        description: StringConstants.description4),
    const CardWidget(
      name: "AI & Automation",
      image: "assets/images/ai.png",
      description: StringConstants.description1,
    ),
    const CardWidget(
      name: "Data & Analytics",
      image: "assets/images/data_analytics.png",
      description: StringConstants.description2,
    ),
    const CardWidget(
      name: "Digital Transformation",
      image: "assets/images/digital_automation.png",
      description: StringConstants.description3,
    ),
    const CardWidget(
      name: "Cloud Offering",
      image: "assets/images/cloud.png",
      description: StringConstants.description4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    num deviceWidth = MediaQuery.of(context).size.width;
    num minWidth = 700;
    num midWidth = 800;
    num maxWidth = 1000;
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: Stack(
        children: [
          Container(
            height: 300,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(vertical: 50),
            color: ColorConstants.white,
            child: const Column(
              children: [
                Text(
                  "Our Services",
                  style: TextStyle(
                      color: ColorConstants.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enhancing Creativity, Step by Step.",
                  style: TextStyle(color: ColorConstants.black, fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(top: 150),
            child: CarouselSlider(
              items: courses,
              options: CarouselOptions(
                initialPage: 0,
                viewportFraction: deviceWidth <= minWidth ? .8 : .3,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
