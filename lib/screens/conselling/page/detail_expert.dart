import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class DetailExpertPage extends StatefulWidget {
  const DetailExpertPage({super.key});

  @override
  State<DetailExpertPage> createState() => _DetailExpertPageState();
}

class _DetailExpertPageState extends State<DetailExpertPage> {
  List<String> list = <String>[
    '10 January 2024 13:10',
    '10 January 2024 14:10',
    '10 January 2024 15:40',
    '10 January 2024 20:10',
  ];
  bool buttonEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BasicAppbar(title: "Consultation"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 47, left: 40, right: 40, bottom: 20),
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox(
                        height: 180,
                        width: 146,
                        child: Image.network(
                          "https://i.pinimg.com/originals/05/0a/51/050a511d3d5a5ba0d66aec2a8e7e9ad0.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Rotin S.Psi., M.Psi.",
                            style: ThemeText().robotoMedium,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Adult Clinic Psychologist for 6 years. Expert on handling stress, family and relationship, job and career, anxiety disorders, parenting, childcare, and self development. Clinics at RS Bhayangkara at Bali. Self Clinic at Dewi Madri Denpasar, Bali. Graduated from of Surabaya University on 2018 and Udaya University on 2014. ",
                          style: ThemeText().robotoRegular14,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "STR Number : 1202622193154916",
                          style: ThemeText().robotoRegular14,
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    DropdownMenu(
                      width: 350,
                      hintText: "Available Dates",
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
                    )
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        "Doctor's Fee",
                        style: ThemeText().robotoSmall,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "\$12",
                        style: ThemeText().robotoSmallBold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MainButtonWidget(
                    title: "Get Appointment",
                    onPressed: () {
                      Navigator.pushNamed(context, '/paymentmethod');
                    },
                    isEnabled: buttonEnabled,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
