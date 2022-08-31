import 'package:flutter/cupertino.dart';

import 'package:flutter_manager_oop/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({required this.title, required this.content, Key? key})
      : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Text(title, style: smallTextBoldStyle),
          const SizedBox(width: 4),
          Text(content, style: smallTextStyle),
        ],
      );
}
