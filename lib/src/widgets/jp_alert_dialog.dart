// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jp_worst_design/jp_worst_design.dart';

class JpAlertDialog extends StatelessWidget {
  final Color colorMessage;
  final String title;
  final double height;
  final double width;
  final String actionLabel;
  final String actionCloseLabel;

  final bool actionCloseVisibility;
  final bool actionOkayVisibility;
  final VoidCallback? onPressedCloseBtn;
  final VoidCallback? onPressOkay;
  final Widget child;
  final Color actionColor;
  const JpAlertDialog({
    super.key,
    required this.colorMessage,
    required this.title,
    this.height = 58,
    this.width = 300,
    this.actionCloseVisibility = true,
    this.actionOkayVisibility = false,
    this.actionLabel = "Okay",
    this.actionCloseLabel = "Close",
    this.onPressOkay,
    this.onPressedCloseBtn,
    required this.child,
    this.actionColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.centerLeft,
      title: Row(
        children: [
          Icon(
            Icons.warning_rounded,
            color: colorMessage,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(title)
        ],
      ),
      titleTextStyle: TextStyle(fontSize: 18.0, color: colorMessage),
      titlePadding: const EdgeInsets.all(18.0),
      content: Container(
        // color: Colors.red,
        // width: width * 0.3,
        height: height,
        width: width,
        alignment: Alignment.centerLeft,
        child: child,
      ),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      actionsPadding: const EdgeInsets.all(18.0),
      actions: [
        Row(
          mainAxisAlignment: actionCloseVisibility && actionOkayVisibility
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.end,
          children: [
            Visibility(
              // visible: true,
              visible: actionCloseVisibility,
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)))),
                      onPressed: onPressedCloseBtn,
                      child: Text(actionCloseLabel))),
            ),
            Visibility(
              visible: actionOkayVisibility,
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: actionColor,
                        // primary: Colors.redAccent,
                        // onPrimary: Colors.black54,
                        shadowColor: Colors.redAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: onPressOkay,
                      child: Text(
                        actionLabel,
                        style: const TextStyle(color: Colors.white70),
                      ))),
            ),
          ],
        )
      ],
    );
  }
}
