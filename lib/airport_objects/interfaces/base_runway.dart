import 'package:flutter_manager_oop/airport_objects/interfaces/base_airplane.dart';

abstract class BaseRunway {
  BaseRunway({required this.tag, this.airplane});

  final String tag;
  final BaseAirplane? airplane;
}
