import 'package:flutter_manager_oop/airport_objects/interfaces/airplanes/base_airplane.dart';
import 'package:flutter_manager_oop/enums.dart';

abstract class BaseRamp {
  BaseRamp({required this.size, this.airplane});

  final Size size;
  final BaseAirplane? airplane;
}
