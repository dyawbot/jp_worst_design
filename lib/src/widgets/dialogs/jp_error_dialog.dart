import 'package:flutter/material.dart';
import 'package:jp_worst_design/jp_worst_design.dart';

class JpErrorDialog extends StatelessWidget {
  final String title;
  final String message;
  final String actionText;
  final double titleSize;
  final double shapeBorderRadius;
  const JpErrorDialog({
    this.title = "Error",
    required this.message,
    this.actionText = "CLOSE",
    this.shapeBorderRadius = 18,
    this.titleSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(
        right: 24,
        left: 24,
        top: 18,
        bottom: 8,
      ),
      actionsPadding: const EdgeInsets.only(bottom: 12, right: 18, top: 12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(shapeBorderRadius)),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: AppColors.error,
                fontWeight: FontWeight.bold,
                fontSize: titleSize),
          ),
          const Divider(thickness: 1, color: AppColors.blackLightPrimary),
        ],
      ),
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            actionText,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
