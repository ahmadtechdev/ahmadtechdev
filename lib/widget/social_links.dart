import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);

  double _getIconSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return AppDimensions.normalize(15);
    } else if (Responsive.isTablet(context)) {
      return AppDimensions.normalize(12);
    } else {
      return AppDimensions.normalize(10);
    }
  }

  EdgeInsets _getPadding(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Space.h!;
    } else if (Responsive.isTablet(context)) {
      return Space.h! / 2;
    } else {
      return Space.all(0.2, 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final iconSize = _getIconSize(context);

    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
          padding: _getPadding(context),
          child: IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(12),
            icon: Image.network(
              e.value,
              color: appProvider.isDark ? Colors.white : Colors.black,
              height: iconSize,
              width: iconSize,
            ),
            iconSize: iconSize,
            onPressed: () => openURL(
              StaticUtils.socialLinks[e.key],
            ),
            hoverColor: AppTheme.c!.primary!,
          ),
        ),
      )
          .toList(),
    );
  }
}