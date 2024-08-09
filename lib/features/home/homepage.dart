import 'package:opt_app/library/opt_app.dart';
import 'package:opt_app/models/savedDiagnosis.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() async {
    setState(() {
      diagnosesBox.get(0);
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Your Saved Diagnoses",
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
          : SizedBox(
              height: double.infinity,
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    diagnosesBox.get(0);
                  });
                },
                child: Column(
                  children: [
                    // Text(
                    //   "Your Saved Diagnoses",
                    //   style: AppTypography().largeSemiBold,
                    // ),
                    // const SizedBox(height: 12),
                    ListView.builder(
                      itemCount: diagnosesBox.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final SavedDiagnosis savedDiagnosis =
                            diagnosesBox.getAt(index) as SavedDiagnosis;
                        return DiagnosisHomeCard(
                          diagnosis: savedDiagnosis,
                          isLast: index == diagnosesBox.length - 1,
                        );
                      },
                    ),
                  ],
                ),
              ),
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
