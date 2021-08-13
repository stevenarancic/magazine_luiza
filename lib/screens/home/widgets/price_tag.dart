import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final double priceTag;
  final int numberOfInstallments;

  PriceTag({
    required this.priceTag,
    required this.numberOfInstallments,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${this.numberOfInstallments}x de METODO CALCULAR PARCELA sem juros",
    );
  }
}
