import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
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
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sort),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 18,
                  width: 1,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),

      // TextField(
      //   decoration: InputDecoration(
      //     hintText: "Search",
      //     border: InputBorder.none,
      //     prefixIcon: const Row(
      //       children: [
      //         Icon(Icons.sort),
      //         SizedBox(width: 5),
      //         Text("|"),
      //       ],
      //     ),
      //     suffixIcon: IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.search),
      //     ),
      //   ),
      // ),
    );
  }
}
