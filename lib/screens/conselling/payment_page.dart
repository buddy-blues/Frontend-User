import 'package:buddy_blues/screens/conselling/widget/payment_detail_cost.dart';
import 'package:buddy_blues/screens/conselling/widget/payment_detail_expert.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<String> list = <String>[
    'BCA',
    'BNI',
    'MANDIRI',
  ];
  bool buttonEnabled = false;

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
