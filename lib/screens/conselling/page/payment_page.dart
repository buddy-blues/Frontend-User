import 'package:buddy_blues/screens/conselling/widget/content_detail_expert.dart';
import 'package:buddy_blues/screens/conselling/widget/payment_detail_cost.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BasicAppbar(title: "Consultation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 14, left: 20, right: 20, bottom: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ContentDetailExpert(),
                      const SizedBox(height: 24),
                      const Divider(),
                      const Text("Doctor's Contact"),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: MainButtonWidget(
                          title: "WhatsApp",
                          onPressed: () {},
                          isEnabled: true,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: MainButtonWidget(
                          title: "Telephone Number",
                          onPressed: () {},
                          isEnabled: true,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: MainButtonWidget(
                          title: "Email",
                          onPressed: () {},
                          isEnabled: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const PaymentDetailCost()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButtonWidget(
                title: "Pay",
                onPressed: () {
                  Navigator.pushNamed(context, '/afterpayment');
                },
                isEnabled: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
