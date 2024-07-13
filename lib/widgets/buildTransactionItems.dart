import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fintechapp/constants/constants.dart';

class BuildTransactionItems extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final Color bgColor;
  final String nameImage;

  const BuildTransactionItems({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.bgColor,
    required this.nameImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: Fwhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bgColor.withOpacity(0.2),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/icons/$nameImage.svg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter",
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "-\$$price",
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  color: Fred,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
