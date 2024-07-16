import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageView extends StatelessWidget {
  const ImageView(
      {super.key,
      required this.imageUrl,
      this.borderRadius,
      this.height,
      this.width,
      this.boxFit = BoxFit.cover,
      this.placeholderLoadingSize = 40,
      this.errorIconSize = 30,
      required this.isSVG,
      this.color,
      this.opacity,
      this.colorBlendMode,
      required this.isAsset});

  final String imageUrl;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final double placeholderLoadingSize;
  final BoxFit boxFit;
  final double errorIconSize;
  final bool isSVG;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final bool isAsset;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        child: isSVG
            ? SvgPicture.asset(
                imageUrl,
                height: height,
                width: width,
                fit: boxFit,
                // color: color,
                colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
              )
            : isAsset
                ? Image.asset(imageUrl,
                    height: height,
                    width: width,
                    fit: boxFit,
                    opacity: opacity,
                    colorBlendMode: colorBlendMode,
                    color: color)
                : CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: width,
                    height: height,
                    imageBuilder: (context, imageProvider) =>
                        Image(image: imageProvider, fit: boxFit, width: width, height: height),
                    placeholder: (context, url) => const Center(
                      child: LoadingView(),
                    ),
                    errorWidget: (context, url, error) => Icon(CupertinoIcons.exclamationmark_triangle_fill,
                        size: errorIconSize, color: AppColors.primaryColor),
                  ),
      ),
    );
  }
}
