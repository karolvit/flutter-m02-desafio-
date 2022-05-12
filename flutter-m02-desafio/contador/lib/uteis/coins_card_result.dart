import 'package:contador/data/coins.dart';
import 'package:contador/resources/colors.dart';
import 'package:contador/uteis/coins_mapper.dart';
import 'package:flutter/material.dart';

class ResultPageCard extends StatelessWidget {
  final Coins coins;
  const ResultPageCard({
    Key? key,
    required this.coins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsApp.mineShaft,
      margin: const EdgeInsets.all(7.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(
          width: 3.0,
          color: ColorsApp.mineShaft,
        ),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.attach_money_sharp,
          color: ColorsApp.edward,
        ),
        trailing: const Text(
          '0.04',
          style: TextStyle(color: ColorsApp.springGreen),
        ),
        title: Text(
          CoinsMapperExtension.toCoinsString(coins),
          style: const TextStyle(color: ColorsApp.edward),
        ),
      ),
    );
  }
}
