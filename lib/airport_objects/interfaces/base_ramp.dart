import 'package:flutter_manager_oop/airport_objects/interfaces/base_airplane.dart';

abstract class BaseRamp {
  BaseRamp({this.airplane});

  final BaseAirplane? airplane;
}
