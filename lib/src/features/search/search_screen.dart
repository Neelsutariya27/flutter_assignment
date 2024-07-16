import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/configs/app_images.dart';
import 'package:flutter_assignment/src/core/configs/app_text_style.dart';
import 'package:flutter_assignment/src/core/utils/text_view.dart';
import 'package:flutter_assignment/src/core/widgets/image_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> images = [AppImages.tile1, AppImages.tile2];
  List<int> indexOrder = [0, 1, 1, 0];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(38),
                boxShadow: [
                  BoxShadow(color: AppColors.blackColor.withOpacity(.07), offset: const Offset(0, 6), blurRadius: 4)
                ],
                border: Border.all(color: AppColors.blackColor.withOpacity(.18))),
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                  hintText: "Search",
                  hintStyle: AppTextStyle.regularTextStyle
                      .copyWith(fontWeight: FontWeight.w300, color: AppColors.blackColor.withOpacity(.26))),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegularTextView(
                    data: "Persian Tabriz",
                    textColor: AppColors.textBlackColor,
                  ),
                  RegularTextView(data: "10,000 results", textColor: AppColors.textGreyColor, fontSize: 10),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: AppColors.blackColor, width: .5)),
                child: const Row(
                  children: [
                    ImageView(imageUrl: AppImages.filterIcon, isSVG: true, isAsset: false),
                    RegularTextView(data: "Filters", textColor: AppColors.textGreyColor, fontSize: 9, leftPadding: 2)
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            runSpacing: 12,
            spacing: 12,
            children: List.generate(
                10,
                (index) => Container(
                      width: (MediaQuery.sizeOf(context).width / 2) - 25,
                      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 14),
                      color: AppColors.whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ImageView(
                              imageUrl: images[indexOrder[index % indexOrder.length]],
                              isSVG: false,
                              isAsset: true,
                              height: MediaQuery.sizeOf(context).height / 6.7,
                            ),
                          ),
                          const RegularTextView(
                              data: "Persian Tabriz", topPadding: 12, textColor: AppColors.textBlackColor),
                          const SemiBoldTextView(data: "₹ 12,999", fontSize: 10, textColor: AppColors.textGreyColor),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RegularTextView(
                                  data: "151 x 102 cm", fontSize: 9, textColor: AppColors.textGreyColor, topPadding: 4),
                              ImageView(imageUrl: AppImages.heartIcon, isSVG: true, isAsset: false)
                            ],
                          )
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
