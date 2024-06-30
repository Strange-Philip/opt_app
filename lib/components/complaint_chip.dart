import 'package:opt_app/library/opt_app.dart';

class ComplaintChip extends StatefulWidget {
  const ComplaintChip({
    Key? key,
    required this.complaint,
    required this.isSelected,
  }) : super(key: key);

  final Complaint complaint;
  final bool isSelected;

  @override
  State<ComplaintChip> createState() => _ComplaintChipState();
}

class _ComplaintChipState extends State<ComplaintChip> {
  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: widget.isSelected ? AppColors.primary : AppColors.primary.shade50,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
        child: Text(widget.complaint.name!,
            style: AppTypography().baseMedium.copyWith(
                  color: widget.isSelected ? AppColors.white : AppColors.black,
                )),
      ),
    );
  }
}
