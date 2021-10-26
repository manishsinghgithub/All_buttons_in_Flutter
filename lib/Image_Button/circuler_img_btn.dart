import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CrlImgBtn extends StatelessWidget {
  final String imgUrl =
      'https://media-exp1.licdn.com/dms/image/C4E03AQFp6NzuiwxO8Q/profile-displayphoto-shrink_400_400/0/1633892158704?e=1640822400&v=beta&t=_8mOGnxnE_cGX8yxTfvdb8MUPfQ-dZUBHHe6V1xyVQE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuler Btn'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Material(
              elevation: 10,
              shape: CircleBorder(),
              //borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Fluttertoast.showToast(msg: 'Image tapped');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(color: Colors.deepOrangeAccent, width: 3),
                      shape: BoxShape.circle
                      //borderRadius: BorderRadius.circular(28)
                      ),
                  child: Ink.image(
                    image: NetworkImage(imgUrl),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Manish Singh',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrangeAccent),
            )
          ],
        ),
      ),
    );
  }
}
