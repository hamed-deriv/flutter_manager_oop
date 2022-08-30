import 'package:flutter/material.dart';
import 'package:flutter_manager_oop/airport_objects/interfaces/base_airport.dart';

import 'package:flutter_manager_oop/styles.dart';

class AirportPage extends StatelessWidget {
  const AirportPage({required this.airport, Key? key}) : super(key: key);

  final BaseAirport airport;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(airport.name, style: pageTitleTextStyle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('RAMPS', style: titleTextStyle),
              SizedBox(
                height: 64,
                child: ListView.builder(
                  itemCount: airport.ramps.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Image.asset('assets/ic_ramp.png',
                                width: 32, height: 32),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Size: ${airport.ramps[index].size.name}'),
                              Text(
                                  'Airplane: ${airport.ramps[index].airplane ?? 'empty'}')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
