import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AllButoon extends StatefulWidget {
  @override
  _AllButoonState createState() => _AllButoonState();
}

class _AllButoonState extends State<AllButoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("All Button"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //The First one Elevated button.
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      textStyle: TextStyle(fontSize: 18),
                      onPrimary: Colors.white,
                      minimumSize: Size(230, 80)),
                  //Flutter toast is to show a pop -up text only for givin quick hint to user.
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Elevated Tapped !Done', fontSize: 14),
                  child: Text("Elevated")),
              SizedBox(
                height: 20,
              ),
              //icon button
              IconButton(
                  iconSize: 64,
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Icon button tapped', fontSize: 14),
                  icon: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  )),
              SizedBox(
                height: 10,
              ),
              //outlined button.
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                    textStyle: TextStyle(fontSize: 18),
                    minimumSize: Size.fromHeight(80),
                    side: BorderSide(width: 2, color: Colors.green),
                  ),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Outlined Tapped !Done', fontSize: 14),
                  child: Text("Outlined")),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    //minimumSize: Size.fromHeight(80),
                    textStyle: TextStyle(fontSize: 18),
                    primary: Colors.teal,
                  ),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Text Button Tapped !Done', fontSize: 14),
                  child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              // you can use any button with icon and have same styling setting.
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      textStyle: TextStyle(fontSize: 18),
                      onPrimary: Colors.white,
                      minimumSize: Size(230, 80)),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'icon Eleveted tapped', fontSize: 14),
                  icon: Icon(Icons
                      .settings), //in icon you can give text widget and at label you can give icon widget.
                  label: Text('Icon-Elevated')),
              SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.amber,
                    textStyle: TextStyle(fontSize: 18),
                    minimumSize: Size.fromHeight(80),
                    side: BorderSide(width: 2, color: Colors.amber),
                  ),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Outlined-Icon tapped', fontSize: 14),
                  icon: Icon(Icons.account_box_rounded),
                  label: Text('Outlined-icon')),
              SizedBox(
                height: 10,
              ),
              TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    //minimumSize: Size.fromHeight(80),
                    textStyle: TextStyle(fontSize: 18),
                    primary: Colors.teal,
                  ),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'Text-Icon Tapped', fontSize: 14),
                  icon: Text("Icon-Text"),
                  label: Icon(Icons.alarm))
            ],
          ),
        ),
      ),
    );
  }
}
