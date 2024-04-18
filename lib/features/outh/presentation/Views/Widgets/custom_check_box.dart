import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckBoxStat extends StatefulWidget {
  const CustomCheckBoxStat({super.key});

  @override
  State<CustomCheckBoxStat> createState() => _CustomCheckBoxStatState();
}

class _CustomCheckBoxStatState extends State<CustomCheckBoxStat> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        value: value,
        side: BorderSide(color: AppColors.grey),
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}