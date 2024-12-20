import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planification_app/common/widgets/button/basic_app_button.dart';
import 'package:planification_app/core/configs/assets/app_images.dart';
import 'package:planification_app/core/configs/assets/app_vectors.dart';
import 'package:planification_app/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.introBackground))),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)
                  ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),
                  BasicAppButton(
                    onPressed: (){

                    },
                     title: 'Get Started'
                     )
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.25),
          )
        ],
      ),
    );
  }
}
