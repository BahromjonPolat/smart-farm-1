import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/app_logo.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(140.0),
      padding: MyEdgeInsets.symmetric(h: 20.0, v: 18.0),
      decoration: MyDecoration.circular(gradient: _gradient),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextRegular(text: 'Hamyon balansi', color: MyColors.white),
              MySizedBox(height: 5.0),
              MyTextBold(
                  text: '150 000 so`m', color: MyColors.white, size: 22.0),
              const Spacer(),
              MyTextRegular(text: '8600 1234 0000 6545', color: MyColors.white),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLogo(),
              MyTextRegular(text: '25/09', color: MyColors.white),
            ],
          )
        ],
      ),
    );
  }

  final LinearGradient _gradient = const LinearGradient(
    colors: [Color(0xFF8E31F4), Color(0xFF4945F8)],
  );
}
