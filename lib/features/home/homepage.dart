import 'package:opt_app/library/opt_app.dart';
import 'package:opt_app/models/savedDiagnosis.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Home",
            style: AppTypography().largeSemiBold.copyWith(
                  color: AppColors.white,
                ),
          )),
      floatingActionButton: diagnosesBox.isEmpty
          ? const SizedBox.shrink()
          : FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectComplaint(),
                  ),
                );
              },
              elevation: 0,
              child: const Icon(Icons.add),
            ),
      body: diagnosesBox.isEmpty
          ? buildErrorPage()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    "Your Saved Diagnoses",
                    style: AppTypography().largeSemiBold.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: diagnosesBox.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final SavedDiagnosis savedDiagnosis =
                        diagnosesBox.getAt(index) as SavedDiagnosis;
                    return ListTile(
                      title: Text(savedDiagnosis.diagnosisList.first.diagnosis!),
                      subtitle: Text(savedDiagnosis.diagnosisList.first.symptoms.join(", ")),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DiagnoseDetails(
                              savedDiagnosis: savedDiagnosis,
                            ),
                          ),
                        );
                      },
                    );
                  },
                )),
              ],
            ),
    );
  }

  Container buildErrorPage() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "🥴",
                style: AppTypography().xxxxxlBold,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                "You have not \nsaved any diagnoses yet",
                style: AppTypography().baseSemiBold,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PrimaryButton(
                  text: "Generate Diagnosis",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectComplaint(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
