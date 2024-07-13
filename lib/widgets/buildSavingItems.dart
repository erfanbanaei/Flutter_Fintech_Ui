import 'package:fintechapp/constants/constants.dart';
import 'package:flutter/material.dart';

class BuildSavingItems extends StatelessWidget {
  final String name;
  final String price;
  final Color color1;
  final Color color2;

  const BuildSavingItems({
    super.key,
    required this.name,
    required this.price,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 91,
      decoration: BoxDecoration(
        color: Fwhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Color(0XFF707070),
                        fontSize: 12,
                        fontFamily: "Inter",
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  "\$${price}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              width: 132,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: color1.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  Container(
                    width: 66,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: color2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
