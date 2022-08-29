import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_runway.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_ramp.dart';

class LocalAirport extends BaseAirport {
  LocalAirport({
    required String name,
    required List<BaseRamp> ramps,
    required List<BaseRunway> runways,
  }) : super(name: name, ramps: ramps, runways: runways);
}
