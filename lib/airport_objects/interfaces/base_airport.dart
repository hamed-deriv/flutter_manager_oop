import 'package:flutter_manager_oop/airport_objects/interfaces/base_ramp.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_runway.dart';

abstract class BaseAirport {
  BaseAirport({required this.name, required this.ramps, required this.runways});

  final String name;
  final List<BaseRamp> ramps;
  final List<BaseRunway> runways;
}
