import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/la.dart';

class ListForumWidget extends StatefulWidget {
  final String comment;
  const ListForumWidget({
    super.key,
    required this.comment,
  });

  @override
  State<ListForumWidget> createState() => _ListForumWidgetState();
}

class _ListForumWidgetState extends State<ListForumWidget> {
  bool loveSolid = false;
  final loveIcon = Iconify;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text("Amalia Anggraeni"),
          subtitle: Text("18 h"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "http://www.venmond.com/demo/vendroid/img/avatar/big.jpg"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "My baby was very fussy yesterday, my husband got angry and pinched his hand until it turned blue. today I have to take care of him alone because he left home.",
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/commentforum");
                  },
                  icon: const Iconify(La.comment_alt),
                ),
                const Text("10"),
                const SizedBox(width: 10),
                Text(widget.comment)
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      loveSolid = !loveSolid;
                    });
                  },
                  icon: Iconify(
                    (loveSolid == false ? La.heart : La.heart_solid),
                    color: (loveSolid == false ? Colors.black : Colors.red),
                  ),
                ),
                const Text("50")
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            )
          ],
        ),
        const Divider(),
      ],
    );
  }
}
