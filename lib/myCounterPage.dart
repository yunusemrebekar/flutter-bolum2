import 'package:flutter/material.dart';

class Mycounterpage extends StatefulWidget {
  const Mycounterpage({super.key});

  @override
  State<Mycounterpage> createState() => _MycounterpageState();
}

class _MycounterpageState extends State<Mycounterpage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("WİDGET OLUSTURMA  "),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyNewTextWidget(),
              Text(
                _sayac.toString(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("buton tıklandı ve sayaç değişti $_sayac");
            sayaciArttir();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
