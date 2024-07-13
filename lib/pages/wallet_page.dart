import 'package:dotted_border/dotted_border.dart';
import 'package:fintechapp/constants/constants.dart';
import 'package:fintechapp/widgets/buildItemWallet.dart';
import 'package:fintechapp/widgets/buildTransactionItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      overlayColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 28,
                      ),
                    ),
                    const Text(
                      "Wallet",
                      style: TextStyle(
                        fontSize: 18,
                        color: Fblack,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset("assets/images/Profile.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: DottedBorder(
                          strokeWidth: 5,
                          dashPattern: const [11, 9],
                          child: SizedBox(
                            width: 36,
                            child: Center(
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Fblack,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Fwhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const BuildItemWallet(
                        bgColor: Fwhite,
                        name: "Zarror Nibros",
                        expirationDate: "09/23",
                        numberCard: "12343456",
                        price: "10,000.00",
                      ),
                      const BuildItemWallet(
                        bgColor: Color(0XFFFBE5A3),
                        name: "Zarror Nibros",
                        expirationDate: "09/23",
                        numberCard: "12343456",
                        price: "10,000.00",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Transactions",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SvgPicture.asset("assets/icons/Filter.svg")
                  ],
                ),
                const SizedBox(height: 12),
                const BuildTransactionItems(
                  name: "Dribble",
                  description: "Subcription fee",
                  nameImage: "desktop",
                  bgColor: Color(0XFFFFCB66),
                  price: "15.00",
                ),
                const BuildTransactionItems(
                  name: "House",
                  description: "Saving",
                  nameImage: "Import",
                  bgColor: Color(0XFF403BD7),
                  price: "50.00",
                ),
                const BuildTransactionItems(
                  name: "Sony Camera",
                  description: "Shopping fee",
                  nameImage: "Bag_alt",
                  bgColor: Color(0XFFF6BDE9),
                  price: "200.00",
                ),
                const BuildTransactionItems(
                  name: "Paypal",
                  description: "Salary",
                  nameImage: "Credit_card",
                  bgColor: Color(0XFF53D258),
                  price: "32.00",
                ),
                const BuildTransactionItems(
                  name: "Car",
                  description: "Saving",
                  nameImage: "Import",
                  bgColor: Color(0XFF403BD7),
                  price: "40.00",
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Savings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        color: Color(
                          0XFF489FCD,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const BuildItemSaving(
                  name: "Iphone 13 Mini",
                  price: "699.00",
                  nameFileImage: "phone1",
                  percentage: 100,
                ),
                const BuildItemSaving(
                  name: "Macbook Pro M1",
                  price: "1,499.00",
                  nameFileImage: "phone1",
                  percentage: 150,
                ),
                const BuildItemSaving(
                  name: "House",
                  price: "65,000.00",
                  nameFileImage: "phone1",
                  percentage: 80,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class BuildItemSaving extends StatelessWidget {
  final String name;
  final String price;
  final String nameFileImage;
  final double percentage;
  const BuildItemSaving({
    super.key,
    required this.name,
    required this.price,
    required this.nameFileImage,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: double.maxFinite,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Fwhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0XFF403BD7).withOpacity(0.2),
                ),
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      "assets/icons/$nameFileImage.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "\$$price",
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 4,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0XFFF3F3F3)),
                      child: Row(
                        children: [
                          Container(
                            height: 4,
                            width: percentage,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: const Color(0XFF403BD7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
