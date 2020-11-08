import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'CommentsPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(MdiIcons.menu),
          title: Text('TalkItOut'),
          actions: [
            IconButton(
                icon: Icon(Icons.info_outline_rounded), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.notifications_none_rounded), onPressed: () {})
          ],
        ),
        body: LayoutBuilder(builder: (ctx, constrains) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trending',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.pink),
                  ),
                ),
                Stack(alignment: Alignment.center, children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        "assets/covid.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    'How has the covid-19 outbreak affected your mental health?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w300,
                        wordSpacing: 1),
                    textAlign: TextAlign.center,
                  )),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              MdiIcons.heartOutline,
                              size: 28,
                            ),
                            onPressed: () {}),
                        Text('11')
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            MdiIcons.messageOutline,
                            size: 28,
                          ),
                          onPressed: () {},
                        ),
                        Text('15')
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.only(
                          top: 18.0, bottom: 8.0, right: 12.0, left: 12.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.17)),
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black.withOpacity(0.7),
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: 20,
                      child: CircleAvatar(
                          child: Icon(
                            MdiIcons.cat,
                            color: Colors.black,
                            size: 30,
                          ),
                          backgroundColor: Colors.yellow.withOpacity(0.7),
                          radius: 20),
                    ),
                    Text('')
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
                  child: Text(
                    '14 d',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Divider(
                  endIndent: 40,
                  indent: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sample2()));
                      },
                      child: Text(
                        'View all 15 comments',
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.8,
                            fontSize: 17),
                      )),
                ),
                Divider(
                  thickness: 5,
                )
              ],
            ),
          );
        }));
  }
}
