import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ThreadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Thread'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      child: Icon(
                        MdiIcons.cat,
                        color: Colors.black,
                        size: 30,
                      ),
                      backgroundColor: Colors.yellow.withOpacity(0.7),
                      radius: 20),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      wordSpacing: 1,
                      letterSpacing: 0.05),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              MdiIcons.heartOutline,
                              size: 28,
                              color: Colors.pink,
                            ),
                            onPressed: () {}),
                        Text('11')
                      ],
                    ),
                    Text(
                      '14 d',
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    )
                  ],
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        child: Icon(
                          MdiIcons.dog,
                          color: Colors.white,
                          size: 30,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        radius: 20),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 90,
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 8.0,
                                  right: 12.0,
                                  left: 12.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey.withOpacity(0.17)),
                              child: Text(
                                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.7),
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
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
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
                                            fontWeight: FontWeight.w300),
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
                              style: TextStyle(color: Colors.grey),
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
                          MdiIcons.cat,
                          color: Colors.black,
                          size: 30,
                        ),
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        radius: 20),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 90,
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 8.0,
                                  right: 12.0,
                                  left: 12.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey.withOpacity(0.17)),
                              child: Text(
                                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.7),
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
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
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
                                            fontWeight: FontWeight.w300),
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
                              style: TextStyle(color: Colors.grey),
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
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        radius: 20),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 90,
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 8.0,
                                  right: 12.0,
                                  left: 12.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey.withOpacity(0.17)),
                              child: Text(
                                'It is a long established fact.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.7),
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
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
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
                                            fontWeight: FontWeight.w300),
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
                              style: TextStyle(color: Colors.grey),
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
                  height: 70,
                )
              ],
            ),
          ),
        ),
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
    );
  }
}
