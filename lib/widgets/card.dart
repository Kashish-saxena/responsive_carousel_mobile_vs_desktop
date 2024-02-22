import 'package:flutter/material.dart';
import 'package:web_vs_mobile/utils/color_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key,required this.name,required this.image,required this.description});
  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(color: Color(0xff181818)),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 80,
            width: 80,
          ),
          Text(
            name,
            style: const TextStyle(color: ColorConstants.white),
          ),
          Text(
            description,
            style: const TextStyle(color: ColorConstants.grey),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Learn More",
                  style: TextStyle(color: ColorConstants.white),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: ColorConstants.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}