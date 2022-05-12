import 'package:contador/pages/homePage.dart';
import 'package:contador/data/repository/apiCoin.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));

  final api = ApiCoin();
  final result = await api.getCoin();
  print(result);

  
}
