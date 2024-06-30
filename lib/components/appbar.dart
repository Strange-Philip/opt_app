import 'package:opt_app/library/opt_app.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
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
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: toolbarHeight,
      bottom: bottom,
      title: Text(title ?? '',
          style: AppTypography().largeMedium.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              )),
      leading: hasLeading!
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  AppIcons.arrowNarrowLeft,
                  height: 24,
                  width: 24,
                  colorFilter: const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
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
