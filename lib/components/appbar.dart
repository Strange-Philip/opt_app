import 'package:opt_app/library/opt_app.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool? hasLeading;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;

  const AppAppbar({
    super.key,
    this.title,
    this.actions,
    this.hasLeading = true,
    this.bottom,
    this.toolbarHeight = 65,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: toolbarHeight,
      bottom: bottom,
      surfaceTintColor: Colors.transparent,
      title: titleWidget ??
          Text(title ?? '',
              style: AppTypography().largeMedium.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  )),
      leadingWidth: 95,
      leading: hasLeading!
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.gray.shade100,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
                    child: Center(
                      child: Text("back",
                          style: AppTypography().baseMedium.copyWith(
                                color: AppColors.black,
                              )),
                    ),
                  ),
                ),
              ),
            )
          : const SizedBox.shrink(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, toolbarHeight!);
}
