import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/airport_objects/interfaces/base_service.dart';
import 'package:flutter_manager_oop/styles.dart';

class ServiceItem extends StatefulWidget {
  const ServiceItem({required this.service, this.onFinished, Key? key})
      : super(key: key);

  final BaseService service;
  final VoidCallback? onFinished;

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  double currentValue = 0;
  double remainValue = -1;

  @override
  void initState() {
    super.initState();

    remainValue = widget.service.duration - currentValue;
  }

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      widget.service.getAsset,
                      width: 16,
                      height: 16,
                      color: _isServiceDone() ? Colors.green : Colors.orange,
                    ),
                  ),
                ),
                CircularProgressIndicator(
                  value: currentValue / widget.service.duration,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              '${remainValue <= 0 ? 'Done' : remainValue.toStringAsFixed(2)}',
              style: smallTextBoldStyle,
            )
          ],
        ),
        onTap: currentValue > 0
            ? null
            : () => Timer.periodic(
                  const Duration(milliseconds: 40),
                  (Timer timer) {
                    if (mounted) {
                      currentValue += 0.04;
                      remainValue = widget.service.duration - currentValue;

                      setState(() {});
                    }

                    if (_isServiceDone()) {
                      widget.onFinished?.call();

                      timer.cancel();
                    }
                  },
                ),
      );

  bool _isServiceDone() => currentValue >= widget.service.duration;
}
