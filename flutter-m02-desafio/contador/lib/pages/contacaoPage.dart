import 'package:contador/data/coins.dart';
import 'package:contador/resources/colors.dart';
import 'package:contador/resources/strings.dart';
import 'package:contador/uteis/coinsCard.dart';
import 'package:flutter/material.dart';

class ContacaPage extends StatefulWidget {
  const ContacaPage({Key? key}) : super(key: key);

  @override
  State<ContacaPage> createState() => _ContacaPageState();
}

class _ContacaPageState extends State<ContacaPage> {
  List<Coins> selectedCurrency = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.background,
      appBar: AppBar(
        title: const Text(
          Strings.titleContacao,
          style: TextStyle(
            color: ColorsApp.blueRibbon,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: ColorsApp.background,
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          const ListTile(
            subtitle: Text(
              Strings.subtitleMoedaBase,
              style: TextStyle(
                fontSize: 18.0,
                color: ColorsApp.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Coins.values.length,
              itemBuilder: (context, index) {
                final coins = Coins.values[index];
                return CoinsCard(
                    coins: coins,
                    selected: selectedCurrency.contains(coins),
                    onItemCliked: () {
                      setState(() {
                        if (selectedCurrency.contains(coins)) {
                          selectedCurrency.remove(coins);
                        } else {
                          selectedCurrency.add(coins);
                        }
                      });
                    });
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(163.0, 43),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                Strings.bottomProximo,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
