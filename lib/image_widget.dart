import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _logo =
        "https://static-00.iconduck.com/assets.00/games-batman-icon-2048x2048-zjmbyc6b.png";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red.shade300,
                  child: Image.asset(
                    "assets/images/car.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade300,
                  child: Image.asset(
                    "assets/images/car.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade300,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_logo),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif", image: _logo),
          ),
        ],
      ),
    );
  }
}
