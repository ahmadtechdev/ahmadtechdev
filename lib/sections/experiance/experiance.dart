import 'package:flutter/material.dart';
import 'package:folio/sections/experiance/service_desktop.dart';

import '../../responsive/responsive.dart';
import 'experiance_mobile.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ExperienceMobile(),
      tablet: ExperienceMobile(),
      desktop: ExperienceDesktop(),
    );
  }
}