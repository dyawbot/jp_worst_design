// ignore_for_file: dangling_library_doc_comments, use_super_parameters
import 'package:flutter/material.dart';

/// JPButton is a customizable button widget for Flutter.
///
/// Parameters:
/// - `text`: The label for the button.
/// - `onPressed`: The function to execute on button press.
/// - `isLoading`: Set to true to show a loading indicator.
/// - `backgroundColor`: The background color of the button.
/// - `textColor`: The color of the text.
/// - `loaderColor`: The color of the loading indicator.
/// - `borderRadius`: The border radius of the button.
///

class JPButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? loaderColor;
  final double? borderRadius;

  const JPButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.loaderColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
      ),
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? CircularProgressIndicator(
              color: loaderColor ?? Theme.of(context).colorScheme.secondary,
              strokeWidth: 2,
            )
          : Text(
              text,
              style: TextStyle(
                  color: textColor ?? Theme.of(context).colorScheme.onPrimary),
            ),
    );
  }
}
