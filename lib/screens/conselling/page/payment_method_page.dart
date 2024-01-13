import 'package:buddy_blues/screens/conselling/widget/payment_detail_cost.dart';
import 'package:buddy_blues/screens/conselling/widget/payment_detail_expert.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentMethodPage> {
  List<String> list = <String>[
    'BCA',
    'BNI',
    'MANDIRI',
  ];
  bool buttonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BasicAppbar(title: "Consultation"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    const PaymentDetailExpert(),
                    const SizedBox(height: 20),
                    const PaymentDetailCost(),
                    const SizedBox(height: 20),
                    DropdownMenu(
                      inputDecorationTheme: InputDecorationTheme(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      width: 385,
                      hintText: "Payment Method",
                      onSelected: (value) {
                        setState(() {
                          buttonEnabled = true;
                        });
                      },
                      dropdownMenuEntries:
                          list.map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                            value: value, label: value);
                      }).toList(),
                    ),
                    const SizedBox(height: 24),
                    MainButtonWidget(
                      title: "Get Appointment",
                      onPressed: () {
                        Navigator.pushNamed(context, '/confirmpayment');
                      },
                      isEnabled: buttonEnabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
