import 'package:flutter/material.dart';

class FristPage extends StatefulWidget {
  @override
  _FristPageState createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1st page"),
        ),
        body: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: getColor(Colors.yellow, Colors.red),
              foregroundColor: getColor(Colors.red, Colors.yellow),
              side: getBorder(Colors.black, Colors.red),
            ),
            onPressed: () {},
            child: Icon(
              Icons.star,
              size: 40,
            ),
          ),
        ));
  }

//for changing color of body and all
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  MaterialStateProperty<BorderSide> getBorder(Color color, Color pressedColor) {
    final getBorder = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return BorderSide(color: pressedColor, width: 2);
      }
      return BorderSide(color: color, width: 2);
    };
    return MaterialStateProperty.resolveWith(getBorder);
  }
}
