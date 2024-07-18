class CubitState {
  CubitState({required this.information});

  final String information;
}

class CubitInitialState extends CubitState {
  CubitInitialState({
    required String information,
  }) : super(information: information);
}

class CubitInformationState extends CubitState {
  CubitInformationState({
    required String information,
  }) : super(information: information);
}
