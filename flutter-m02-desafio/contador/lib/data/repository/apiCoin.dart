import 'dart:convert';

import 'package:contador/data/model_coin.dart';
import 'package:http/http.dart' as http;

class ApiCoin {
  final _url =
      'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,GBP-BRL,JPY-BRL,ARS-BRL,CAD-BRL,BRL-USD,EUR-USD,GBP-USD,JPY-USD,ARS-USD,CAD-USD,BRL-EUR,USD-EUR,GBP-EUR,JPY-EUR,ARS-EUR,CAD-EUR,BRL-JPY,EUR-JPY,USD-JPY,BRL-ARS,EUR-ARS,USD-ARS,BRL-CAD,EUR-CAD,USD-CAD,BRL-GBP,EUR-GBP,USD-GBP';

  Future<List<ModelCoin>> getCoin() async {
    final resources = await http.get(Uri.parse(_url));

    try {
      if (resources.statusCode == 200) {
        final json = jsonDecode(resources.body) as Map;

        return json.values.map((coin) {
          return ModelCoin.fromJson(coin);
        }).toList();
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}
