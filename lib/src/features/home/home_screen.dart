import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/configs/app_images.dart';
import 'package:flutter_assignment/src/core/utils/text_view.dart';
import 'package:flutter_assignment/src/core/widgets/image_view.dart';
import 'dart:ui' as ui;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> collectionImages = [
    AppImages.collection1,
    AppImages.collection2,
    AppImages.collection3,
    AppImages.collection4
  ];
  List<String> exploreImages = [AppImages.explore1, AppImages.explore2, AppImages.explore3];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height / 4.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: const DecorationImage(image: AssetImage(AppImages.homeBannerImage))),
          ),
          const SizedBox(height: 24),
          const ImageView(imageUrl: AppImages.collectionTextIcon, isSVG: true, isAsset: false),
          const SizedBox(height: 24),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ImageView(
                            imageUrl: collectionImages[index % collectionImages.length],
                            isSVG: false,
                            isAsset: true,
                            borderRadius: BorderRadius.circular(11),
                            width: 90,
                            height: 110,
                          ),
                        )),
              ),
            ),
          ),
          const SizedBox(height: 36),
          const ImageView(imageUrl: AppImages.recentProjectIcon, isSVG: true, isAsset: false),
          const SizedBox(height: 19),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                ImageView(
                  imageUrl: AppImages.sofa,
                  isSVG: false,
                  isAsset: true,
                  height: 100,
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(600), bottomRight: Radius.circular(600)),
                  width: MediaQuery.sizeOf(context).width / 2.24,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: List.generate(
                        4,
                        (index) => Container(
                              margin: const EdgeInsets.only(right: 2),
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: index == 0 ? AppColors.blackColor : Colors.grey),
                            )),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) {
                            return ui.Gradient.linear(
                              const Offset(24.0, 4.0),
                              const Offset(4.0, 19.0),
                              AppColors.textLinearGradient,
                              // [0.1, 0.5, 1.0],
                            );
                          },
                          child: const RegularTextView(
                              data: "Luxury Living Room in Manhattan",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center,
                              maxLine: 2,
                              topPadding: 12),
                        ),
                      ),
                      const Expanded(
                          child: RegularTextView(
                              data:
                                  "A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and character to a lively family gathering space.",
                              fontSize: 8,
                              maxLine: 3,
                              textAlign: TextAlign.center,
                              rightPadding: 5,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 34),
          const ImageView(imageUrl: AppImages.exploreIcon, isSVG: true, isAsset: false),
          const SizedBox(height: 26),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: ImageView(
                            imageUrl: exploreImages[index % exploreImages.length],
                            isSVG: false,
                            isAsset: true,
                            borderRadius: BorderRadius.circular(11),
                            width: 140,
                            height: 103,
                          ),
                        )),
              ),
            ),
          ),
          const SizedBox(height: 26),
          const ImageView(imageUrl: AppImages.guideIcon, isSVG: true, isAsset: false),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 24),
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ImageView(
                  imageUrl: AppImages.guide,
                  isSVG: false,
                  isAsset: true,
                  height: MediaQuery.sizeOf(context).height / 3.18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.scaffoldBackgroundColor.withOpacity(.54),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.blackColor.withOpacity(.07),
                                offset: const Offset(0, 2.7),
                                blurRadius: .28)
                          ],
                          border: Border.all(color: AppColors.primaryColor)),
                      child:
                          const ImageView(isAsset: false, isSVG: true, height: 10, imageUrl: AppImages.backArrowIcon),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.scaffoldBackgroundColor.withOpacity(.54),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.blackColor.withOpacity(.07),
                                offset: const Offset(0, 2.7),
                                blurRadius: .28)
                          ],
                          border: Border.all(color: AppColors.primaryColor)),
                      child: const ImageView(
                          isAsset: false, isSVG: true, height: 10, imageUrl: AppImages.forwardArrowIcon),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
