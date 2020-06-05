import 'package:bloc/bloc.dart';

enum CounterEvents { encrement, decrement }

class CounterBloc extends Bloc<CounterEvents, int> {
  @override
  int get initialState => 1;

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case CounterEvents.encrement:
        //yield adds a value to the output stream of the surrounding async* function. It's like return , but doesn't terminate the function.
        yield state + 1;
        break;

      case CounterEvents.decrement:
        yield state - 1;
        break;
    }
  }
}
