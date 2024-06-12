import 'package:flutter/material.dart';
import 'package:robot/flutter_neumorphic.dart';


class Screen extends StatefulWidget {
  final bool _isScreenOn;
  Screen(this._isScreenOn);
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: const NeumorphicStyle(
            shape: NeumorphicShape.flat,
            depth: -3,
            surfaceIntensity: 10,
            shadowDarkColor: Colors.black,
            border: NeumorphicBorder(
              color: Color(0x33000000),
              width: 2,
            )),
        child: Text(
          widget._isScreenOn ? "ON" : "OFF",
          style: TextStyle(
            fontSize: 30,
            color: widget._isScreenOn ? Colors.green : Colors.red,
          ),
        ));
  }
}
