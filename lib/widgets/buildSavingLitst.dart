
import 'package:fintechapp/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildSavingLitst extends StatelessWidget {
  final String nameProduct;
  final num finalPrice;
  final num myMoney;
  final int remainingDays;
  final Color bgColor;
  final String nameImageFile;
  const BuildSavingLitst({
    super.key,
    required this.nameProduct,
    required this.finalPrice,
    required this.myMoney,
    required this.remainingDays,
    required this.bgColor,
    required this.nameImageFile,
  });

  @override
  Widget build(BuildContext context) {
    num percentagePayment = (myMoney / finalPrice) * 100;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 176,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bgColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            nameProduct,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Fwhite,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Balance",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 12,
                                  color: Fwhite,
                                ),
                              ),
                              Text(
                                "${percentagePayment.toInt()}%",
                                style: const TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 12,
                                  color: Fwhite,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 4,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.white.withOpacity(0.7),
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                double percentage = percentagePayment / 100;
                                return Row(
                                  children: [
                                    Container(
                                      height: 4,
                                      width: constraints.maxWidth * percentage,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$$myMoney",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Fwhite,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " of \$$finalPrice",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Fwhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "$remainingDays days left",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Fwhite,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "See detail",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              color: Fwhite,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            right: -1,
            child: SvgPicture.asset(
              "assets/icons/$nameImageFile.svg",
            ),
          ),
        ],
      ),
    );
  }
}
