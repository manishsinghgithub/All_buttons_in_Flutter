import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpWidget extends StatefulWidget {
  static final String loremIpsum =
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).';
  static final String imgUrl =
      'https://images.pexels.com/photos/9651396/pexels-photo-9651396.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

  @override
  _ExpWidgetState createState() => _ExpWidgetState();
}

class _ExpWidgetState extends State<ExpWidget> {
  late ExpandableController controller;

  @override
  void initState() {
    super.initState();
    controller = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable Widget'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: ListView(
        children: [
          buildCard("Lorem Ipsum 1", ExpWidget.imgUrl),
          buildCard('Lorem Ipsum 2', ExpWidget.imgUrl),
          buildCard('Lorem Ipsum 3', ExpWidget.imgUrl),
        ],
      ),
    );
  }

  Widget buildCard(String title, String url) => ExpandableNotifier(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () => controller.toggle(),
                    child: Image.network(url)),
                SizedBox(height: 10),
                ScrollOnExpand(
                  child: ExpandablePanel(
                    controller: controller,
                    theme: ExpandableThemeData(
                      expandIcon: Icons.arrow_downward,
                      collapseIcon: Icons.arrow_upward,
                      tapBodyToCollapse: true,
                      tapBodyToExpand: true,
                    ),
                    header: Text(
                      title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    collapsed: Text(
                      ExpWidget.loremIpsum,
                      style: TextStyle(fontSize: 18),
                      softWrap: true,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Text(
                      List.generate(3, (_) => ExpWidget.loremIpsum)
                          .join('\n\n'),
                      style: TextStyle(fontSize: 18),
                    ),
                    builder: (_, collapsed, expanded) => Padding(
                      padding: const EdgeInsets.all(10.0).copyWith(top: 0),
                      child:
                          Expandable(collapsed: collapsed, expanded: expanded),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
