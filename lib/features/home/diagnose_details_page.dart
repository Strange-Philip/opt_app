import 'package:intl/intl.dart';
import 'package:opt_app/components/cards/diagnosis_card.dart';
import 'package:opt_app/library/opt_app.dart';
import 'package:opt_app/models/savedDiagnosis.dart';

class DiagnoseDetails extends StatefulWidget {
  final SavedDiagnosis savedDiagnosis;
  const DiagnoseDetails({super.key, required this.savedDiagnosis});

  @override
  State<DiagnoseDetails> createState() => _DiagnoseDetailsState();
}

class _DiagnoseDetailsState extends State<DiagnoseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppAppbar(
          hasLeading: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.gray.shade100,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 8),
                  child: Center(
                    child: Text("⚡️by Gemini AI",
                        style: AppTypography().baseMedium.copyWith(
                              color: AppColors.black,
                            )),
                  ),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Hero(
                tag: widget.savedDiagnosis.image!,
                child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: CachedImageWidget(
                        image: widget.savedDiagnosis.image!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Date: ",
                      style: AppTypography().largeSemiBold.copyWith(
                            color: AppColors.black,
                          ),
                    ),
                    TextSpan(
                      text: DateFormat("dd/MM/yyy")
                          .format(DateTime.parse(widget.savedDiagnosis.date!)),
                      style: AppTypography().baseMedium.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
                maxLines: 2,
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Tentative diagnosis for patient:",
                style: AppTypography().xxlBold,
                maxLines: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.savedDiagnosis.diagnosisList.toList().map((diagnosis) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: DiagnosisCard(
                      diagnosis: diagnosis,
                      index: widget.savedDiagnosis.diagnosisList.toList().indexOf(diagnosis) + 1,
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    diagnosesBox
                        .delete(
                      widget.savedDiagnosis.id,
                    )
                        .then((value) {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: ShapeDecoration(
                      color: AppColors.red.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Delete",
                        textAlign: TextAlign.center,
                        style: AppTypography().largeSemiBold.copyWith(color: AppColors.red),
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}
