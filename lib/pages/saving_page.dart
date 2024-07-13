import 'package:fintechapp/constants/constants.dart';
import 'package:fintechapp/widgets/buildSavingLitst.dart';
import 'package:flutter/material.dart';

class SavingPage extends StatelessWidget {
  const SavingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
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
                    "Savings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.add, size: 30),
                ],
              ),
              const SizedBox(height: 20),
              const BuildSavingLitst(
                nameProduct: "Iphone 13 Mini",
                finalPrice: 699,
                myMoney: 300,
                remainingDays: 14,
                bgColor: Fred,
                nameImageFile: "phone",
              ),
              const BuildSavingLitst(
                nameProduct: "Macbook Pro M1",
                finalPrice: 1499,
                myMoney: 300,
                remainingDays: 30,
                bgColor: Fpink,
                nameImageFile: "desktop1",
              ),
              const BuildSavingLitst(
                nameProduct: "Cars",
                finalPrice: 20000,
                myMoney: 10000,
                remainingDays: 90,
                bgColor: Fyellow,
                nameImageFile: "key",
              ),
              const BuildSavingLitst(
                nameProduct: "House",
                finalPrice: 30500,
                myMoney: 20000,
                remainingDays: 1800,
                bgColor: Fblue,
                nameImageFile: "house",
              )
            ],
          ),
        ),
      ),
    );
  }
}
