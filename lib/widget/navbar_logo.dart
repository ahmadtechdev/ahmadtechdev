import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: AppText.b1!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.black
          ),

        ),
        Text(
          "Ahmad",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Agustina',
            color: appProvider.isDark ? Colors.white : Colors.black
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b1!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.black
          ),
        )
      ],
    );
  }
}
