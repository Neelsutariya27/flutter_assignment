import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/widgets/image_view.dart';

class BottomBarIconView extends StatelessWidget {
  const BottomBarIconView({super.key, required this.icon, required this.isSelected, required this.onTap});
  final String icon;
  final bool isSelected;

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: -85,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryColor : AppColors.transparentColor, shape: BoxShape.circle),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.sizeOf(context).width / 3,
          child: ImageView(
              isAsset: false,
              isSVG: true,
              imageUrl: icon,
              height: 23,
              color: isSelected ? AppColors.blackColor : AppColors.blackColor.withOpacity(.42)),
        ),
      ]),
    );
  }
}
