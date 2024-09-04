import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.h1!.copyWith(
        fontFamily: 'Montserrat',
        color: appProvider.isDark ? Colors.white : Colors.black,
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.l1!.copyWith(
        fontFamily: 'Montserrat',
        color: appProvider.isDark ? Colors.grey : Colors.black,
      ),
    );
  }
}
