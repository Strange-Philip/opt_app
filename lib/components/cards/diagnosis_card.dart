import 'package:opt_app/library/opt_app.dart';

class DiagnosisCard extends StatelessWidget {
  final Diagnosis diagnosis;
  final int index;
  const DiagnosisCard({super.key, required this.diagnosis, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$index - ${diagnosis.diagnosis}",
              style: AppTypography().extraLargeBold,
              maxLines: 2,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              diagnosis.reason!,
              style: AppTypography().baseMedium.copyWith(color: AppColors.black),
              maxLines: 10,
            ),
            const SizedBox(
              height: 4,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Symptoms:",
                style: AppTypography().largeSemiBold.copyWith(
                      color: AppColors.black,
                      decoration: TextDecoration.underline,
                    ),
              ),
              TextSpan(
                text: " ${diagnosis.symptoms.join(", ")}",
                style: AppTypography().baseMedium.copyWith(color: AppColors.black),
              ),
            ])),
            const SizedBox(
              height: 4,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Ocular Tests:",
                style: AppTypography().largeSemiBold.copyWith(
                      color: AppColors.black,
                      decoration: TextDecoration.underline,
                    ),
              ),
              TextSpan(
                text: " ${diagnosis.ocularTests.join(", ")}",
                style: AppTypography().baseMedium.copyWith(color: AppColors.black),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
