import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_app_bar.dart';
import 'package:payment_app/core/widgets/primary_button.dart';
import 'package:payment_app/feat/payment_details/presentation/widget/card_info.dart';
import 'package:payment_app/feat/payment_details/presentation/widget/paynment_widget.dart';
import 'package:payment_app/feat/reset_page/presentation/screens/reset_page.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> assetsOptions = [
    "assets/icons/card.svg",
    "assets/icons/paybal.svg",
    "assets/icons/ebay.svg",
  ];
  int selected = 0;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: "Payment Details",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 55,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                itemBuilder: (context, index) => SelectedPayMentWidget(
                  margin: EdgeInsets.zero,
                  svgPath: assetsOptions[index],
                  isSelected: index == selected,
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: assetsOptions.length,
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            CustomCreditCard(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
            const SizedBox(
              height: 34,
            ),
            PrimaryButton(
              title: "Pay Now",
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ResetPage(),
                    ),
                  );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
