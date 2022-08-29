import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';
import 'package:flutter_manager_oop/styles.dart';

class AirportItem extends StatelessWidget {
  const AirportItem({required this.airport, Key? key}) : super(key: key);

  final BaseAirport airport;

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: Image.asset(
            'assets/ic_airport.png',
            width: 32,
            height: 32,
          ),
          title: Text(airport.name, style: normalTextStyle),
          subtitle: Text(
            'Ramps: ${airport.ramps.length}, Runways: ${airport.runways.length}',
            style: smallTextStyle,
          ),
          onTap: () {},
        ),
      );
}
