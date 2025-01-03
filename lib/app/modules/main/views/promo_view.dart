import 'package:flutter/material.dart';
import '../../../design_system/typography/text_styles.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Promo Page",
        style: TextStyles.heading1,
      ),
    );
  }
}