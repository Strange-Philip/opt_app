import 'package:intl/intl.dart';
import 'package:opt_app/library/opt_app.dart';
import 'package:opt_app/models/savedDiagnosis.dart';

class DiagnosisHomeCard extends StatelessWidget {
  final SavedDiagnosis diagnosis;
  final bool isLast;
  const DiagnosisHomeCard({super.key, required this.diagnosis, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiagnoseDetails(
                    savedDiagnosis: diagnosis,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat("d MMM yyyy").format(DateTime.parse(diagnosis.date!)),
                          style: AppTypography().largeBold,
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Diagnoses:",
                                  style: AppTypography().largeSemiBold.copyWith(
                                        color: AppColors.black,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      " ${diagnosis.diagnosisList.map((e) => e.diagnosis!).join(", ")}",
                                  style:
                                      AppTypography().baseMedium.copyWith(color: AppColors.black),
                                ),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Hero(
                      tag: diagnosis.image!,
                      child: SizedBox(
                          height: 80,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: CachedImageWidget(
                              image: diagnosis.image!,
                              height: 80,
                              width: 80,
                              fit: BoxFit.fill,
                              isSmall: true,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            )),
        if (!isLast)
          Divider(
            color: AppColors.gray.shade300,
            thickness: 1.5,
          ),
      ],
    );
  }
}
