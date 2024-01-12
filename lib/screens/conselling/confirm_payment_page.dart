import 'package:buddy_blues/screens/conselling/widget/payment_detail_cost.dart';
import 'package:buddy_blues/screens/conselling/widget/payment_detail_expert.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:buddy_blues/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class ConfirmPaymentPage extends StatelessWidget {
  const ConfirmPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeColor().bluePrimary500,
        centerTitle: true,
        title: Text(
          "Consultation",
          style: ThemeText().robotoMedium.copyWith(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: ListView(
          children: [
            Column(
              children: [
                const PaymentDetailExpert(),
                const SizedBox(height: 24),
                const PaymentDetailCost(),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    enabled: false,
                    contentPadding: EdgeInsets.all(10),
                    labelText: "BCA",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                const SizedBox(height: 16),
                const TextfieldWidget(
                  title: "Name on Card",
                  labelTextField: 'Sri Ratna',
                  isEnabled: false,
                ),
                const SizedBox(height: 16),
                const TextfieldWidget(
                  title: "Card Number*",
                  labelTextField: "xxxx xxxx xxxx xxxx",
                  isEnabled: false,
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextfieldWidget(
                        title: "Expiry Date*",
                        labelTextField: "MM/YY",
                        isEnabled: false,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextfieldWidget(
                        title: "Security Code*",
                        labelTextField: "xxx",
                        isEnabled: false,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const TextfieldWidget(
                  title: "ZIP/Postal Code",
                  labelTextField: "xxxxx",
                  isEnabled: false,
                ),
                const SizedBox(height: 24),
                MainButtonWidget(
                  title: "Confirm Payment",
                  onPressed: () {},
                  isEnabled: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
