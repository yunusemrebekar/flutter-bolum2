import 'package:flutter/material.dart';

void main() {
  runApp(TemelButonlar());
}

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text("textbutton"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple.shade300),
          ),
          onLongPress: () {
            debugPrint("UZUN BASILID");
          },
          label: Text(
            "textbutton icon",
          ),
          icon: Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("elevated button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("elevatedbutton.icon"),
          icon: Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("outline button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("outline icon button"),
        ),
      ],
    );
  }
}
