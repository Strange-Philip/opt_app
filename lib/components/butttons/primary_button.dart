import 'package:opt_app/library/opt_app.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton(
      {super.key,
      this.isloading = false,
      this.isEnabled = true,
      this.onPressed,
      required this.text});

  final bool isloading;
  final bool isEnabled;
  final Function()? onPressed;
  final String text;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool loading = false;

  bool get isEnabled {
    return widget.isEnabled && !loading && !widget.isloading;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isEnabled
          ? () async {
              setState(() {
                loading = true;
              });
              await widget.onPressed!.call();
              setState(() {
                loading = false;
              });
            }
          : null,
      child: Opacity(
        opacity: widget.isEnabled ? 1 : 0.6,
        child: Container(
          width: double.infinity,
          height: 56,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: ShapeDecoration(
            color: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: loading
              ? const Center(
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                      )),
                )
              : Center(
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    style: AppTypography().largeSemiBold.copyWith(color: AppColors.white),
                  ),
                ),
        ),
      ),
    );
  }
}
