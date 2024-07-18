import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/cubit/cubit_state.dart';

class CubitPresenter extends Cubit<CubitState> {
  CubitPresenter() : super(CubitInitialState(information: ''));

  void get showAdvantages =>
      emit(CubitInformationState(information: 'Vantagem x'));

  void get showDisadvantages =>
      emit(CubitInformationState(information: 'Desvantagem y'));
}
