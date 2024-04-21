import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rxdart/cubit/counter_state.dart';
import 'package:rxdart/rxdart.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());

  final BehaviorSubject<int> counter = BehaviorSubject.seeded(0);
  void increment(){
    counter.value++;
  }
}