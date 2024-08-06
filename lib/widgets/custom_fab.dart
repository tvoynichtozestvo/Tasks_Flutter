import 'package:flutter/material.dart';
import 'package:to_do/resources/colors.dart';
import 'package:to_do/resources/icons.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFAB({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.secondary,
      onPressed: onPressed,
      child: const Icon(
        AppIcons.add,
      ),
    );
  }
}
