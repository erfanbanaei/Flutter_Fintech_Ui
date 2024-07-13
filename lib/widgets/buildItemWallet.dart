import 'package:fintechapp/constants/constants.dart';
import 'package:flutter/material.dart';

class BuildItemWallet extends StatelessWidget {
  final Color bgColor;
  final String price;
  final String numberCard;
  final String name;
  final String expirationDate;

  const BuildItemWallet({
    super.key,
    required this.bgColor,
    required this.price,
    required this.numberCard,
    required this.name,
    required this.expirationDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 271,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Balance",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Inter",
                            ),
                          ),
                          Text(
                            "\$$price",
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/icons/Logo.png")
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Fblack,
                          ),
                          children: [
                            TextSpan(text: "${numberCard.substring(0, 4)}    "),
                            const TextSpan(text: "••••    "),
                            const TextSpan(text: "••••    "),
                            TextSpan(
                              text:
                                  "${numberCard.substring(numberCard.length - 4)}",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 51,
              decoration: const BoxDecoration(
                color: Fblack,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 10,
                            color: Color(0XFFCFCFCF),
                          ),
                        ),
                        Text(
                          "Exp",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 10,
                            color: Color(0XFFCFCFCF),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Fwhite,
                          ),
                        ),
                        Text(
                          expirationDate,
                          style: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12,
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
      ),
    );
  }
}
