import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Row threadContainer(BuildContext context, icon, color, bgColor, text) {
  IconData icon;
  Color color, bgColor;
  String text;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      circleAvatar(icon, color, bgColor),
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
                    top: 18.0, bottom: 8.0, right: 12.0, left: 12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.17)),
                child: Text(
                  text,
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
                              fontSize: 12, fontWeight: FontWeight.w300),
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
          ),
        ],
      )
    ],
  );
}

CircleAvatar circleAvatar(IconData icon, Color color, bgColor) {
  return CircleAvatar(
      child: Icon(
        icon,
        color: color,
        size: 30,
      ),
      backgroundColor: bgColor,
      radius: 20);
}
