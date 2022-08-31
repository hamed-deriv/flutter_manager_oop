import 'package:flutter_manager_oop/airport_objects/implementations/services/baggage_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/bus_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/catering_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/cleaning_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/fuel_service.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/services/water_service.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/airplanes/base_airplane.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_service.dart';
import 'package:flutter_manager_oop/enums.dart';

class MediumAirplane extends BaseAirplane {
  MediumAirplane(String model)
      : super(
          size: Size.medium,
          model: model,
          requiredServices: <BaseService>[
            BaggageService(),
            BussService(),
            CateringService(),
            CleaningService(),
            FuelService(),
            WaterService(),
          ],
        );
}
