import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/implementations/airport.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/runway.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/ramps/small_ramp.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_ramp.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_runway.dart';
import 'package:flutter_manager_oop/pages/airport_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Manager OOP',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: AirportListPage(
          airports: <BaseAirport>[
            LocalAirport(
              name: 'Local Airport 01',
              ramps: <BaseRamp>[SmallRamp()],
              runways: <BaseRunway>[Runway(tag: 'Line A')],
            ),
            LocalAirport(
              name: 'Local Airport 02',
              ramps: <BaseRamp>[
                SmallRamp(),
                SmallRamp(),
                SmallRamp(),
                SmallRamp(),
              ],
              runways: <BaseRunway>[Runway(tag: 'Line A')],
            ),
            LocalAirport(
              name: 'Local Airport 03',
              ramps: <BaseRamp>[SmallRamp()],
              runways: <BaseRunway>[Runway(tag: 'Line A')],
            ),
            LocalAirport(
              name: 'Local Airport 04',
              ramps: <BaseRamp>[SmallRamp()],
              runways: <BaseRunway>[Runway(tag: 'Line A')],
            ),
          ],
        ),
      );
}
