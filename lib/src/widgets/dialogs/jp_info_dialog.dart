import 'package:flutter/material.dart';
import 'package:jp_worst_design/jp_worst_design.dart';

class JpInfoDialog extends StatelessWidget {
  final String title;
  final String message;
  final String actionTextRight;
  final String? actionTextLeft;
  final double titleSize;
  final double shapeBorderRadius;
  final VoidCallback? onPressedleft;
  const JpInfoDialog({
    this.title = "Information",
    required this.message,
    this.actionTextRight = "CLOSE",
    this.actionTextLeft,
    this.shapeBorderRadius = 18,
    this.titleSize = 16,
    this.onPressedleft,
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
          Row(
            children: [
              const Icon(Icons.info_outline, color: AppColors.primaryDark),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: titleSize),
              ),
            ],
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
          onPressed: onPressedleft,
          child: Text(actionTextLeft ?? ""),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            actionTextRight,
            style: const TextStyle(fontSize: 14, color: AppColors.textPrimary),
          ),
        ),
      ],
    );
  }
}
