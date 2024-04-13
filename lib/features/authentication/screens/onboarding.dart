import 'package:flutter/material.dart';
import 'package:mini_karrot/utils/constants/image_strings.dart';
import 'package:mini_karrot/utils/constants/sizes.dart';
import 'package:mini_karrot/utils/helpers/helper_functions.dart';
import 'package:mini_karrot/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ///Horizontal scrollable pages
        PageView(
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubTitle1,
            ), OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubTitle2,
            ), OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        )
      ],
    ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * 0.8,
                height: THelperFunctions.screenHeight() * 0.6,
                image: AssetImage(image),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
