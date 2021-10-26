import 'package:flutter/material.dart';
import 'package:version_learning/Components/column_image_button.dart';
import 'package:version_learning/Components/row_img_btn.dart';

class ButtonImage extends StatelessWidget {
  String imgUrl = 'https://shorturl.at/tHI48';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Button'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent[400],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImgBntCmpt('Profile', imgUrl),
            SizedBox(
              height: 20,
            ),
            RowImgBtn(imgUrl, 'Right'),
          ],
        ),
      ),
    );
  }
}
