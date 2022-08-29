import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';
import 'package:flutter_manager_oop/styles.dart';
import 'package:flutter_manager_oop/widgets/airport_item.dart';

class AirportListPage extends StatelessWidget {
  const AirportListPage({this.airports = const <BaseAirport>[], Key? key})
      : super(key: key);

  final List<BaseAirport> airports;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Airports', style: titleTextStyle),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: airports.length,
          itemBuilder: (BuildContext context, int index) =>
              AirportItem(airport: airports[index]),
        ),
      );
}
