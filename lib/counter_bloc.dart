import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_practice/counter_event.dart';
import 'package:bloc_practice/counter_state.dart';

class  CounterBloc extends Bloc<CounterEvent , CounterState>{
CounterBloc() : super(CounterState(0)){
  on<IncrementEvent>((event,emit){
   emit(CounterState(state.count + 1));
  });
  on<DecrementEvent>((event , emit){
   emit(CounterState(state.count -1));
  });
}
}

