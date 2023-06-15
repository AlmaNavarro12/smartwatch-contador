import 'package:bloc/bloc.dart';
import 'package:toast/toast.dart';
import '../count/counter_page.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
  if (state < 10) {
      emit(state + 1);
    } else {
      showToast('No puedes aumentar más de 10');
    }
  }

  void decrement() {
    if (state > 0) {
      emit(state - 1);
    } else {
      showToast('No puedes decrementar menos de 0');
    }
  }

  void pasarCero() => emit(0);
}