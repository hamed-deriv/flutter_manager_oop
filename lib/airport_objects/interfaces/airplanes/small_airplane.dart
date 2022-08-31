import 'package:flutter_manager_oop/airport_objects/implementations/services/baggage_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/bus_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/cleaning_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/fuel_service.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/airplanes/base_airplane.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_service.dart';
import 'package:flutter_manager_oop/enums.dart';

class SmallAirplane extends BaseAirplane {
  SmallAirplane(String model)
      : super(
          size: Size.small,
          model: model,
          requiredServices: <BaseService>[
            BaggageService(),
            BussService(),
            CleaningService(),
            FuelService(),
          ],
        );
}
