import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/app_style.dart';

import 'package:payment_app/core/widgets/custom_app_bar.dart';
import 'package:payment_app/core/widgets/order_info.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: "Thank you ",
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 23,
              left: 23,
              top: 50 + 16,
              bottom: 23,
            ),
            width: double.infinity,
            margin:
                const EdgeInsets.only(bottom: 22, right: 22, left: 22, top: 50),
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  "Thank You",
                  style: AppStyle.meduim25,
                ),
                Text(
                  "Your transaction was successful",
                  style: AppStyle.normal20,
                ),
                const SizedBox(
                  height: 40,
                ),
                const OrderInfo(title: "Date", value: "01/24/2023"),
                const SizedBox(
                  height: 20,
                ),
                const OrderInfo(title: "Time", value: "10:15 AM"),
                const SizedBox(
                  height: 20,
                ),
                const OrderInfo(title: "To", value: "Sam Louis"),
                const Divider(height: 60, thickness: 1, color: Colors.grey),
                const OrderInfo(
                  title: "Total",
                  value: "\$50.97",
                  total: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/master_card.svg"),
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Credit Card",
                            style: AppStyle.normal18,
                          ),
                          Text(
                            "Mastercard **78 ",
                            style: AppStyle.normal20
                                .copyWith(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Expanded(
                      child: Icon(
                        FontAwesomeIcons.barcode,
                        size: 46,
                      ),
                    ),
                    const SizedBox(width: 25),
                    Container(
                      height: 60,
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Paid",
                          style: AppStyle.semiBold24.copyWith(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 173 / 2 - 60),
              ],
            ),
          ),
          const Positioned(
            bottom: 160,
            left: 10,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            bottom: 160,
            right: 10,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: 173,
            left: 50,
            right: 50,
            child: Row(
              children: List.generate(
                20,
                (index) {
                  return Expanded(
                    child: Container(
                      height: 2,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xffB8B8B8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffD9D9D9),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
