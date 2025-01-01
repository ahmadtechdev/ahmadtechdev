import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../configs/space.dart';
import '../../utils/experiance_utils.dart';
import '../../widget/custom_text_heading.dart';
import 'widgets/experiance_card.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nExperience',
        ),
        const CustomSectionSubHeading(
          text: 'Here’s what I’ve been up to professionally :)\n\n',
        ),
        Space.y!,
        CarouselSlider.builder(
          itemCount: ExperienceUtils.experienceTitles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ExperienceCard(
              companyName: ExperienceUtils.experienceTitles[i],
              role: ExperienceUtils.experienceRoles[i],
              duration: ExperienceUtils.experienceDurations[i],
              description: ExperienceUtils.experienceDescriptions[i],
              companyLogo: ExperienceUtils.companyLogos[i],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.8,
            height: width < 450 ? height * 0.5 : height * 0.5,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
