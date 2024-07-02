import 'package:opt_app/library/opt_app.dart';

class SelectTab extends StatefulWidget {
  const SelectTab({
    Key? key,
    required this.complaint,
    required this.isSelected,
  }) : super(key: key);

  final Complaint complaint;
  final bool isSelected;

  @override
  State<SelectTab> createState() => _SelectTabState();
}

class _SelectTabState extends State<SelectTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          border: widget.isSelected
              ? Border.all(color: AppColors.primary, width: 1.5)
              : Border.all(color: AppColors.primary.shade200),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.complaint.name!,
                  style: AppTypography().baseSemiBold.copyWith(
                        color: widget.isSelected ? AppColors.primary : AppColors.primary.shade300,
                      )),
              widget.isSelected
                  ? Icon(
                      Icons.check,
                      color: AppColors.primary,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
