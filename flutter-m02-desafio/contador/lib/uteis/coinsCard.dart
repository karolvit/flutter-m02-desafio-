import 'package:contador/data/coins.dart';
import 'package:contador/resources/colors.dart';
import 'package:contador/uteis/coins_mapper.dart';
import 'package:flutter/material.dart';

class CoinsCard extends StatelessWidget {
  final Coins coins;
  final bool selected;
  final VoidCallback onItemCliked;
  const CoinsCard({
    Key? key,
    required this.coins,
    required this.selected,
    required this.onItemCliked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsApp.mineShaft,
      margin: const EdgeInsets.all(7.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          width: 3.0,
          color: selected ? ColorsApp.blueRibbon : ColorsApp.mineShaft,
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.attach_money_sharp,
          color: selected ? ColorsApp.blueRibbon : ColorsApp.edward,
        ),
        onTap: onItemCliked,
        title: Text(
          CoinsMapperExtension.toCoinsString(coins),
          style: const TextStyle(color: ColorsApp.edward),
        ),
      ),
    );
  }
}
