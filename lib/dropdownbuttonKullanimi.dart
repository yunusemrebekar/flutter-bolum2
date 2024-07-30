import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class Dropdownbuttonkullanimi extends StatefulWidget {
  const Dropdownbuttonkullanimi({super.key});

  @override
  State<Dropdownbuttonkullanimi> createState() =>
      _DropdownbuttonkullanimiState();
}

class _DropdownbuttonkullanimiState extends State<Dropdownbuttonkullanimi> {
  String? _secilensehir = null;
  List<String> _tumSehirler = [
    "istanbul",
    "ankara",
    "sakarya",
    "bursa",
    "malatya"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        style: TextStyle(color: Colors.red),
        icon: Icon(Icons.arrow_downward),
        hint: Text("şehir seçiniz"),
        // items: [
        //   DropdownMenuItem(
        //     child: Text("ankara "),
        //     value: "ankara ",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("istanbul "),
        //     value: "istanbul ",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("sakarya "),
        //     value: "sakarya ",
        //   ),
        // ],
        items: _tumSehirler
            .map(
              (String oankisehir) => DropdownMenuItem(
                child: Text("onki şehir "),
                value: oankisehir,
              ),
            )
            .toList(),
        value: _secilensehir,
        onChanged: (String? yeni) {
          setState(() {
            print("çalıştı $yeni");
            _secilensehir = yeni;
          });
        },
      ),
    );
  }
}
