import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:talkItOut/Screens/Thread.dart';

class Sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
          Material(
            child: DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      actions: [
                        IconButton(
                            icon: Icon(Icons.notifications_none_rounded,
                                color: Colors.black),
                            onPressed: () {}),
                      ],
                      leading: IconButton(
                          icon: Icon(
                            Icons.keyboard_backspace_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      expandedHeight: 300.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return FlexibleSpaceBar(
                            titlePadding: EdgeInsets.only(
                                right: 50, bottom: 15, left: 50, top: 15),
                            title: Text(
                              constraints.biggest.height > 90.0
                                  ? ""
                                  : "How has the COVID-19 outbreak affected your mental health?",
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            background: Stack(
                              alignment: Alignment.topCenter,
                              fit: StackFit.expand,
                              overflow: Overflow.visible,
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.4),
                                      BlendMode.srcOver),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image.asset(
                                      "assets/covid.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 1,
                                  child: SizedBox(
                                    height: 300,
                                    child: Center(
                                      child: Text(
                                        "How has the COVID-19 outbreak affected your mental health?",
                                        // overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 23,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  child: Row(
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                            MdiIcons.heartOutline,
                                            size: 28,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {}),
                                      Text('11',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: _SliverAppBarDelegate(
                        TabBar(
                            indicatorPadding: EdgeInsets.zero,
                            labelColor: Colors.white,
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            unselectedLabelColor: Colors.black,
                            unselectedLabelStyle: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.transparent,
                            indicatorWeight: 0,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink),
                            tabs: [
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.all(0.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Top"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("New"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Counselor"),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      child: Icon(
                                        MdiIcons.dog,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      backgroundColor:
                                          Colors.black.withOpacity(0.7),
                                      radius: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        overflow: Overflow.visible,
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            height: 20,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                90,
                                            padding: EdgeInsets.only(
                                                top: 18.0,
                                                bottom: 8.0,
                                                right: 12.0,
                                                left: 12.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.grey
                                                    .withOpacity(0.17)),
                                            child: Text(
                                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black
                                                      .withOpacity(0.7),
                                                  letterSpacing: 0.2,
                                                  fontWeight: FontWeight.w400),
                                              softWrap: true,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -8,
                                            right: -10,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      MdiIcons.heartOutline,
                                                      color: Colors.pink,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      'Like',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text('')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '13 d ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.reply,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {})
                                        ],
                                      ),
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ThreadPage()));
                                          },
                                          child: Text(
                                            'View all 1 replies',
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontWeight: FontWeight.w300,
                                                letterSpacing: 0.8,
                                                fontSize: 17),
                                          )),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              child: Icon(
                                                MdiIcons.dog,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              backgroundColor:
                                                  Colors.black.withOpacity(0.7),
                                              radius: 20),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                overflow: Overflow.visible,
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Container(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            150,
                                                    padding: EdgeInsets.only(
                                                        top: 18.0,
                                                        bottom: 8.0,
                                                        right: 12.0,
                                                        left: 12.0),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        color: Colors.grey
                                                            .withOpacity(0.17)),
                                                    child: Text(
                                                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          letterSpacing: 0.2,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                      softWrap: true,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: -8,
                                                    right: -10,
                                                    child: Card(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 8.0,
                                                                vertical: 4.0),
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              MdiIcons
                                                                  .heartOutline,
                                                              color:
                                                                  Colors.pink,
                                                              size: 18,
                                                            ),
                                                            SizedBox(
                                                              width: 3,
                                                            ),
                                                            Text(
                                                              'Like',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text('')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '13 d ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ThreadPage()));
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey
                                                            .withOpacity(0.2)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 10),
                                                    child: Text(
                                                        'Write a reply...',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      child: Icon(
                                        MdiIcons.cat,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.7),
                                      radius: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        overflow: Overflow.visible,
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            height: 20,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                90,
                                            padding: EdgeInsets.only(
                                                top: 18.0,
                                                bottom: 8.0,
                                                right: 12.0,
                                                left: 12.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.grey
                                                    .withOpacity(0.17)),
                                            child: Text(
                                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black
                                                      .withOpacity(0.7),
                                                  letterSpacing: 0.2,
                                                  fontWeight: FontWeight.w400),
                                              softWrap: true,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -8,
                                            right: -10,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      MdiIcons.heartOutline,
                                                      color: Colors.pink,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      'Like',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text('')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '19 d ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.reply,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {})
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      child: Icon(
                                        MdiIcons.elephant,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      backgroundColor:
                                          Colors.blue.withOpacity(0.7),
                                      radius: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        overflow: Overflow.visible,
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            height: 20,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                90,
                                            padding: EdgeInsets.only(
                                                top: 18.0,
                                                bottom: 8.0,
                                                right: 12.0,
                                                left: 12.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.grey
                                                    .withOpacity(0.17)),
                                            child: Text(
                                              'It is a long established fact.',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black
                                                      .withOpacity(0.7),
                                                  letterSpacing: 0.2,
                                                  fontWeight: FontWeight.w400),
                                              softWrap: true,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -8,
                                            right: -10,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      MdiIcons.heartOutline,
                                                      color: Colors.pink,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      'Like',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text('')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '13 d ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.reply,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {})
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                          child: Text(
                        "1",
                        style: TextStyle(fontSize: 40),
                      )),
                      Center(
                          child: Text(
                        "1",
                        style: TextStyle(fontSize: 40),
                      )),
                      Center(
                          child: Text(
                        "1",
                        style: TextStyle(fontSize: 40),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          /*.........................................................TextField....................................................*/
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey, width: 1)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    constraints: BoxConstraints(
                        minHeight: 50,
                        maxHeight: 120,
                        minWidth: MediaQuery.of(context).size.width - 80,
                        maxWidth: MediaQuery.of(context).size.width - 60),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        minLines: 1, //Normal textInputField will be displayed
                        maxLines: 5,
                        cursorColor: Colors.pink,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            border: new OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(20.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            // suffix: Card(
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(30.0)),
                            //   child: IconButton(
                            //     disabledColor: Colors.grey,
                            //     icon: Icon(
                            //       Icons.send,
                            //       color: Colors.grey,
                            //     ),
                            //     onPressed: () {},
                            //   ),
                            // ),
                            hintText: "Write a reply...",
                            hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                wordSpacing: 1,
                                fontWeight: FontWeight.w300)),
                      ),
                    ),
                  ),
                  IconButton(
                      splashRadius: 5,
                      icon: Icon(
                        Icons.send,
                        color: Colors.grey,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      decoration: BoxDecoration(color: Colors.white),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

//.............................................................................................
// class MySliverAppBar extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//
//   MySliverAppBar({@required this.expandedHeight});
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SafeArea(
//         child: DefaultTabController(
//             length: 3,
//             child: Scaffold(
//               appBar: AppBar(
//                 elevation: 0,
//                 bottom: TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
//                   Tab(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text("APPS"),
//                     ),
//                   ),
//                   Tab(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text("MOVIES"),
//                     ),
//                   ),
//                   Tab(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text("GAMES"),
//                     ),
//                   ),
//                 ]),
//               ),
//               body: TabBarView(children: [
//                 Icon(Icons.apps),
//                 Icon(Icons.movie),
//                 Icon(Icons.games),
//               ]),
//             )));
//   }
//
//   @override
//   double get maxExtent => expandedHeight;
//
//   @override
//   double get minExtent => kToolbarHeight;
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
// }

// //........................................................................................................
// import 'package:flutter/material.dart';
//
// class MainCollapsingToolbar extends StatefulWidget {
//   @override
//   _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
// }
//
// class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 4,
//         child: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverAppBar(
//                 expandedHeight: 200.0,
//                 floating: false,
//                 pinned: true,
//                 flexibleSpace: FlexibleSpaceBar(
//                     centerTitle: true,
//                     title: Text(
//                         "How has the COVID-19 outbreak affected your mental health?",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16.0,
//                         )),
//                     background: Image.network(
//                       "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               SliverPersistentHeader(
//                 delegate: _SliverAppBarDelegate(
//                   TabBar(
//                     labelColor: Colors.black87,
//                     unselectedLabelColor: Colors.grey,
//                     tabs: [
//                       Tab(icon: Icon(Icons.info), text: "Tab 1"),
//                       Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 2"),
//                       Tab(icon: Icon(Icons.info), text: "Tab 3"),
//                       Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 4"),
//                     ],
//                   ),
//                 ),
//                 pinned: true,
//               ),
//             ];
//           },
//           body: Center(
//             child: Text("Sample text"),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);
//
//   final TabBar _tabBar;
//
//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       child: _tabBar,
//     );
//   }
//
//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
