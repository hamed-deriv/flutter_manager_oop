import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/interfaces/airplanes/base_airplane.dart';
import 'package:flutter_manager_oop/widgets/service_item.dart';

class AirplaneItem extends StatefulWidget {
  const AirplaneItem({required this.airplane, Key? key}) : super(key: key);

  final BaseAirplane airplane;

  @override
  State<AirplaneItem> createState() => _AirplaneItemState();
}

class _AirplaneItemState extends State<AirplaneItem> {
  int finishedServices = 0;

  @override
  Widget build(BuildContext context) => Container(
        height: 132,
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Name: ${widget.airplane.size.name}'),
                const SizedBox(height: 8),
                Text('Model: ${widget.airplane.model}'),
                const SizedBox(height: 8),
                Text(
                  'Services: $finishedServices/${widget.airplane.requiredServices.length}',
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.airplane.requiredServices.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (BuildContext context, int index) =>
                        ServiceItem(
                      service: widget.airplane.requiredServices[index],
                      onFinished: () => setState(() => finishedServices++),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
