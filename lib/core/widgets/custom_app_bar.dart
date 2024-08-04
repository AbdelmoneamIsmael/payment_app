import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.onBackPressed,
  });
  final String title;
  final void Function()? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackPressed ??
            () {
              Navigator.pop(context);
            },
      ),
      title: Text(
        title,
        style: AppStyle.meduim25,
      ),
      centerTitle: true,
    );
  }
}
