import 'package:bloc/bloc.dart';
import 'package:contador/data/cubit/cubit_coins_state.dart';

class CubitCoins extends Cubit<CubitCoinsState> {
  CubitCoins()
      : super(CubitCoinsState(
          [],
        ));
}
