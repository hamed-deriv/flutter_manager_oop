import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/interfaces/base_service.dart';

class ServiceItem extends StatefulWidget {
  const ServiceItem({required this.service, this.onFinished, Key? key})
      : super(key: key);

  final BaseService service;
  final VoidCallback? onFinished;

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  widget.service.getAsset,
                  width: 16,
                  height: 16,
                  color: currentValue == widget.service.duration
                      ? Colors.green
                      : Colors.orange,
                ),
              ),
            ),
            CircularProgressIndicator(
              value: currentValue / widget.service.duration,
              backgroundColor: Colors.grey.withOpacity(0.5),
            )
          ],
        ),
        onTap: currentValue > 0
            ? null
            : () => Timer.periodic(
                  const Duration(seconds: 1),
                  (Timer timer) {
                    setState(() => currentValue++);

                    if (currentValue == widget.service.duration) {
                      widget.onFinished?.call();

                      timer.cancel();
                    }
                  },
                ),
      );
}
