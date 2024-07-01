import 'package:opt_app/library/opt_app.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({
    Key? key,
    required this.eyeComplaintLocation,
    required this.isSelected,
  }) : super(key: key);

  final EyeForComplaint eyeComplaintLocation;
  final bool isSelected;

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: widget.isSelected
              ? Border.all(color: AppColors.primary, width: 2)
              : Border.all(color: AppColors.primary.shade100),
          borderRadius: BorderRadius.circular(13),
        ),
        padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.primary.shade50,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  widget.eyeComplaintLocation.name == 'left'
                      ? '👁️'
                      : widget.eyeComplaintLocation.name == 'right'
                          ? '👁️'
                          : '👀',
                  style: AppTypography().xxxlRegular.copyWith(color: AppColors.primary.shade50),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
                widget.eyeComplaintLocation.name == 'left'
                    ? 'Left Eye'
                    : widget.eyeComplaintLocation.name == 'right'
                        ? 'Right Eye'
                        : 'Both Eyes',
                textAlign: TextAlign.center,
                style: AppTypography().baseSemiBold.copyWith(
                      color: widget.isSelected ? AppColors.primary : AppColors.black,
                    )),
          ],
        ),
      ),
    );
  }
}
