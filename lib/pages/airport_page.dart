import 'package:flutter/material.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/airplanes/medium/aurora_d_8.dart';
import 'package:flutter_manager_oop/airport_objects/implementations/airplanes/small/cessna_430.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/airplanes/base_airplane.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';
import 'package:flutter_manager_oop/styles.dart';
import 'package:flutter_manager_oop/widgets/airplane_item.dart';
import 'package:flutter_manager_oop/widgets/custom_text.dart';

class AirportPage extends StatelessWidget {
  const AirportPage({required this.airport, Key? key}) : super(key: key);

  final BaseAirport airport;

  @override
  Widget build(BuildContext context) {
    final List<BaseAirplane> airplanes = <BaseAirplane>[
      AuroraD8(),
      Cessna430(),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(airport.name, style: pageTitleTextStyle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('RAMPS', style: titleTextBoldStyle),
              _buildRamps(),
              Text('AIRPLANES', style: titleTextBoldStyle),
              _buildAirplanes(airplanes),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRamps() => ListView.builder(
        shrinkWrap: true,
        itemCount: airport.ramps.length,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(
                    'assets/ic_ramp.png',
                    width: 32,
                    height: 32,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomText(
                      title: 'Size',
                      content: '${airport.ramps[index].size.name}',
                    ),
                    CustomText(
                      title: 'Airplane',
                      content: '${airport.ramps[index].airplane ?? '-'}',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildAirplanes(List<BaseAirplane> airplanes) => SizedBox(
        height: 150,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: airplanes.length,
          itemBuilder: (BuildContext context, int index) =>
              AirplaneItem(airplane: airplanes[index]),
        ),
      );
}
