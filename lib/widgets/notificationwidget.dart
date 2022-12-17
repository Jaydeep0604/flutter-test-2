import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({Key? key,required this.notificationmodel}) : super(key: key);
  ItemsModel notificationmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "Order no. ${notificationmodel.nCount} assign to \nyou",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Palette.notifitext1color),
            ),
            SizedBox(
              width: 60,
            ),
            Text("${notificationmodel.nweek} week ago",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Palette.notifitext2color))
          ],
        ),
      ),
    );
  }
}
