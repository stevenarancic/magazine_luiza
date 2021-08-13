import 'package:flutter/material.dart';
import 'package:magazine_luiza/screens/home/widgets/item_name.dart';
import 'package:magazine_luiza/screens/home/widgets/price_tag.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: Text("Ofertas do dia"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/linha.jpg"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/images/celular.jpg",
                  width: 90,
                ),
              ),
              ItemName(
                itemName: "Smartphone Samsung Galaxy A71 128GB Azul 6GB RAM",
                itemModel: "Tela 6.7" " Câm. Quádrupla Câm. + Selfie 32MP",
              ),
            ],
          ),
          PriceTag(
            priceTag: 1979.97,
            numberOfInstallments: 10,
          ),
        ],
      ),
    );
  }
}
