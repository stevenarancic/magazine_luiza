import 'package:flutter/material.dart';

class ItemName extends StatelessWidget {
  final String itemName;
  final String itemModel;

  ItemName({
    required this.itemName,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.itemName,
            style: TextStyle(
              fontSize: 10,
            )),
        Text(
          this.itemModel,
        ),
      ],
    );
  }
}
