import 'package:contador/data/coins.dart';

extension CoinsMapperExtension on Coins {
  static String toCoinsString(Coins coins) {
    switch (coins) {
      case Coins.brl:
        return 'Real';
      case Coins.gbp:
        return 'Libra Esterlina';
      case Coins.usd:
        return 'Dólar Americano';
      case Coins.ars:
        return 'Peso Argentino';
      case Coins.jpy:
        return 'Iene Japonês';
      default:
        return "";
    }
  }
}
