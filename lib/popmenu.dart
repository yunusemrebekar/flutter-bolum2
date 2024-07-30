import 'package:flutter/material.dart';

class popupmenukullanimi extends StatefulWidget {
  const popupmenukullanimi({super.key});

  @override
  State<popupmenukullanimi> createState() => _popupmenukullanimiState();
}

class _popupmenukullanimiState extends State<popupmenukullanimi> {
  List<String> renkler = ["mavi", "sari", "yesil"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print("secilen sehir :$sehir");
        },
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("ankara"),
              value: "ankara",
            ),
            PopupMenuItem(
              child: Text("sakarya"),
              value: "sakarya",
            ),
            PopupMenuItem(
              child: Text("istanbul"),
              value: "istanbul",
            )
          ]; */
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
