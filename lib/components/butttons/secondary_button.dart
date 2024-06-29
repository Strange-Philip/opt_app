import 'package:opt_app/library/opt_app.dart';

class SecondaryButton extends StatefulWidget {
  const SecondaryButton(
      {super.key,
      this.isLoading = false,
      this.isEnabled = false,
      this.onPressed,
      required this.text});

  final bool isLoading;
  final bool isEnabled;
  final Function()? onPressed;
  final String text;

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  bool isLoading = false;

  bool get isEnabled {
    return widget.isEnabled && !isLoading && !widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isEnabled
          ? () async {
              setState(() {
                isLoading = true;
              });
              await widget.onPressed!.call();
              setState(() {
                isLoading = false;
              });
            }
          : null,
      child: Opacity(
        opacity: widget.isEnabled ? 1 : 0.6,
        child: Container(
          width: double.infinity,
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: widget.isEnabled ? AppColors.gray[200]! : AppColors.primary, width: 1)),
          child: isLoading
              ? const Center(
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: CircularProgressIndicator(
                        strokeWidth: 6,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                      )),
                )
              : Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: AppTypography().baseMedium.copyWith(
                      color: widget.isEnabled
                          ? AppColors.primary.withOpacity(0.5)
                          : AppColors.primary),
                ),
        ),
      ),
    );
  }
}
