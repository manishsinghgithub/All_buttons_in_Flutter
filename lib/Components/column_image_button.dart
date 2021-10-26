import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ImgBntCmpt extends StatelessWidget {
  final String url, str;
  ImgBntCmpt(this.str, this.url);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 107, right: 107),
      child: Material(
        color: Colors.deepOrangeAccent[400],
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 8,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Fluttertoast.showToast(msg: 'Immage hasbeen taped');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                height: 200,
                width: 200,
                fit: BoxFit.cover,
                image: NetworkImage(
                  url,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Center(
                child: Text(
                  str,
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
