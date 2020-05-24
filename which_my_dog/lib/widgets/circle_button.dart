import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/my_app_model.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  CircleButton({this.icon, this.color,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300])),
        child: Icon(
          icon,
          color: color,
          size: 60,
        ),
      ),
      onTap: () {
        Provider.of<MyAPPModel>(context, listen: false).incrementQuestionCount();
      },
    );
  }
}
