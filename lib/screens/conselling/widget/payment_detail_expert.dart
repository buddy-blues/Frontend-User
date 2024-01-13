import 'package:buddy_blues/screens/conselling/widget/content_detail_expert.dart';
import 'package:flutter/material.dart';

class PaymentDetailExpert extends StatelessWidget {
  const PaymentDetailExpert({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
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
        child: const ContentDetailExpert());
  }
}
