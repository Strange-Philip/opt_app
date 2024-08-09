import 'package:opt_app/library/opt_app.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({
    Key? key,
    this.image,
    this.height = 70,
    this.width = 70,
    this.placeholder,
    this.errorWidget,
    this.isSmall = false,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  final String? image;
  final double height;
  final double width;
  final Widget? placeholder;
  final Widget? errorWidget;
  final bool? isSmall;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        imageUrl: image!,
        placeholder: (context, url) =>
            placeholder ??
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.primary.shade100.withOpacity(0.7),
              ),
              child: Center(
                child: isSmall!
                    ? SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          backgroundColor: AppColors.primary.shade100.withOpacity(0.5),
                          color: AppColors.primary,
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Loading",
                            style: AppTypography().largeMedium.copyWith(
                                  color: AppColors.primary,
                                ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 15,
                            width: 15,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              backgroundColor: AppColors.primary.shade100.withOpacity(0.5),
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
        errorWidget: (context, url, error) =>
            errorWidget ??
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.red.shade100,
              ),
              child: Center(
                child: isSmall!
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          AppIcons.alertCircle,
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          fit: fit,
                          colorFilter: ColorFilter.mode(
                            AppColors.red,
                            BlendMode.srcIn,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Error loading image",
                            style: AppTypography().largeMedium.copyWith(
                                  color: AppColors.red,
                                ),
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset(
                            AppIcons.alertCircle,
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            fit: fit,
                            colorFilter: ColorFilter.mode(
                              AppColors.red,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
        height: height,
        width: width,
        alignment: Alignment.center,
        fit: fit,
      );
}
