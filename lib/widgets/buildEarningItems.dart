import 'package:fintechapp/constants/constants.dart';
import 'package:flutter/material.dart';

class BuildEarningItems extends StatelessWidget {
  final String name;
  final String price;
  final Color color;
  const BuildEarningItems({
    super.key,
    required this.name,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 125,
            height: 130,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.75),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        name[0],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Fwhite,
                        ),
                      ),
                      Text(
                        "\$ ${price}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Fwhite,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
