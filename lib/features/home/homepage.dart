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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectComplaint(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Your Saved Diagnoses",
              style: AppTypography().largeSemiBold.copyWith(
                    color: AppColors.black,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: diagnosesBox.length,
            itemBuilder: (context, index) {
              final SavedDiagnosis savedDiagnosis = diagnosesBox.getAt(index) as SavedDiagnosis;
              return ListTile(
                title: Text(savedDiagnosis.diagnosisList.first.diagnosis!),
                subtitle: Text(savedDiagnosis.diagnosisList.first.symptoms.join(", ")),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => GenerateDiagnosisPage(
                  //       savedDiagnosis: savedDiagnosis,
                  //     ),
                  //   ),
                  // );
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
