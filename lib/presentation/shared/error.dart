import 'package:flutter/material.dart';
import 'package:posts/config/text_styles.dart';

class ErrorCustomWidget extends StatelessWidget {
  const ErrorCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Something went wrong',
        style: TextStyles.subtitle.copyWith(color: Colors.red),
      ),
    );
  }
}
