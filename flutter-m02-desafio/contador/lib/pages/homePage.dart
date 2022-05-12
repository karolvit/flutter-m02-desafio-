import 'package:contador/pages/basePage.dart';
import 'package:contador/pages/contacaoPage.dart';
import 'package:contador/pages/resultPage.dart';
import 'package:contador/resources/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  late final PageController pageController;
  final numeroDeTab = 3;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: numeroDeTab, vsync: this);
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.background,
      body: Column(
        children: <Widget>[
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                BasePage(),
                ContacaPage(),
                ResultPage(),
              ],
            ),
          ),
          TabPageSelector(
            indicatorSize: 22.0,
            color: ColorsApp.edward,
            selectedColor: ColorsApp.blueRibbon,
            controller: tabController,
          )
        ],
      ),
    );
  }
}
