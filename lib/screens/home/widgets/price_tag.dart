import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final double priceTag;
  final int numberOfInstallments;

  PriceTag({
    required this.priceTag,
    required this.numberOfInstallments,
  });

  double printText(priceTag, numberOfInstallments) {
    return priceTag / numberOfInstallments;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "R\$ ${this.priceTag}",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "${this.numberOfInstallments}x de R\$ ${printText(this.priceTag, this.numberOfInstallments)} sem juros",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
