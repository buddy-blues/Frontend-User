import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              height: 100,
              width: 90,
              child: Image.network(
                "https://i.pinimg.com/originals/05/0a/51/050a511d3d5a5ba0d66aec2a8e7e9ad0.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rotin S.Psi., M.Psi.",
                  style: ThemeText().robotoSmallBold,
                ),
                Text(
                  "Clinic Psychologist for 5 years",
                  style: ThemeText().robotoRegular14,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.pin_drop_rounded,
                          color: ThemeColor().orange,
                        ),
                        const SizedBox(width: 5),
                        const Text("Online")
                      ],
                    ),
                    const SizedBox(width: 60),
                    Row(
                      children: [
                        Icon(
                          Icons.timelapse,
                          color: ThemeColor().orange,
                        ),
                        const SizedBox(width: 5),
                        const Text("01:00 PM"),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: ThemeColor().orange),
                    const SizedBox(width: 10),
                    Text("Wednesday, 10 January 2024")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
