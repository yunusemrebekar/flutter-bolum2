import 'package:flutter/material.dart';
import 'package:widgetolusturma/dropdownbuttonKullanimi.dart';
import 'package:widgetolusturma/image_widget.dart';
import 'package:widgetolusturma/myCounterPage.dart';
import 'package:widgetolusturma/popmenu.dart';
import 'package:widgetolusturma/temel_buton_ozellikleri.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      title: "widget olusturma dersleri",
      home: Scaffold(
        appBar: AppBar(
          actions: [
            popupmenukullanimi(),
          ],
          backgroundColor: Colors.blue,
        ),
        body: popupmenukullanimi(),
      ),
    );
  }
}
