import 'package:contador/data/coins.dart';
import 'package:contador/resources/colors.dart';
import 'package:contador/resources/strings.dart';
import 'package:contador/uteis/coins_card_result.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.background,
      appBar: AppBar(
        title: const Text(
          Strings.titleResultado,
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
              Strings.subtitleResultado,
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
                return ResultPageCard(
                  coins: coins,
                );
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
                Strings.bottomConcluir,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
