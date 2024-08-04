import 'package:flutter/material.dart';

import 'package:payment_app/core/widgets/custom_app_bar.dart';

import 'package:payment_app/core/widgets/order_info.dart';
import 'package:payment_app/core/widgets/primary_button.dart';
import 'package:payment_app/feat/payment_details/presentation/screens/payment_screen.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: "My Cart",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Expanded(
              child: Image(
                image: AssetImage(
                  "assets/images/basket.png",
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const OrderInfo(
              title: "Order Subtotal",
              value: '\$42.97',
            ),
            const OrderInfo(
              title: "Discount",
              value: '\$0',
            ),
            const OrderInfo(
              title: "Shipping",
              value: '\$8',
            ),
            const Divider(
              height: 34,
              endIndent: 15,
              indent: 15,
            ),
            const OrderInfo(
              title: "Total",
              value: '\$50.97',
              total: true,
            ),
            const SizedBox(
              height: 16,
            ),
            PrimaryButton(
              title: 'Checkout',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
