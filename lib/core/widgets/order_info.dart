import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_style.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo(
      {super.key,
      required this.title,
      required this.value,
      this.total = false});
  final String title, value;
  final bool? total;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: total! ? AppStyle.semiBold24 : AppStyle.normal18,
      ),
      Text(
        value,
        style: total! ? AppStyle.semiBold24 : AppStyle.normal18,
      ),
    ]);
  }
}
