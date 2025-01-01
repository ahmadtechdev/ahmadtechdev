

import 'package:flutter/material.dart';

import '../../configs/space.dart';
import '../../utils/experiance_utils.dart';
import '../../widget/custom_text_heading.dart';
import 'widgets/experiance_card.dart';

class ExperienceDesktop extends StatefulWidget {
  const ExperienceDesktop({Key? key}) : super(key: key);

  @override
  ExperienceDesktopState createState() => ExperienceDesktopState();
}

class ExperienceDesktopState extends State<ExperienceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nExperience',
          ),
          const CustomSectionSubHeading(
            text: 'Here’s what I’ve been up to professionally :)\n\n',
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.03,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ExperienceUtils.experienceTitles
                .asMap()
                .entries
                .map(
                  (e) => ExperienceCard(
                companyName: ExperienceUtils.experienceTitles[e.key],
                role: ExperienceUtils.experienceRoles[e.key],
                duration: ExperienceUtils.experienceDurations[e.key],
                description: ExperienceUtils.experienceDescriptions[e.key],
                    companyLogo: ExperienceUtils.companyLogos[e.key],
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}