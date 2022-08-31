import 'package:flutter_manager_oop/airport_objects/interfaces/base_service.dart';
import 'package:flutter_manager_oop/enums.dart';

abstract class BaseAirplane {
  BaseAirplane({
    required this.size,
    required this.model,
    required this.requiredServices,
  });

  final Size size;
  final String model;
  final List<BaseService> requiredServices;
}
