import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RowImgBtn extends StatelessWidget {
  final String url, str;
  const RowImgBtn(this.url, this.str);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 107, right: 107),
      child: Material(
        color: Colors.deepOrangeAccent[400],
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Fluttertoast.showToast(msg: 'Immage hasbeen taped');
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                image: NetworkImage(
                  url,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Center(
                child: Text(
                  str,
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
