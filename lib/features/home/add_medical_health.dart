import 'package:opt_app/library/opt_app.dart';

class MedicalHealthSelect extends StatefulWidget {
  final List<String> complaints;
  final EyeForComplaint location;
  final List<String> ocularHealth;

  const MedicalHealthSelect(
      {super.key, required this.complaints, required this.location, required this.ocularHealth});

  @override
  State<MedicalHealthSelect> createState() => _MedicalHealthSelectState();
}

class _MedicalHealthSelectState extends State<MedicalHealthSelect> {
  List<String> selectedMedicalHealth = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppbar(
        hasLeading: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        child: PrimaryButton(
          text: "Next",
          isEnabled: selectedMedicalHealth.isNotEmpty,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPhotos(
                  complaints: widget.complaints,
                  location: widget.location,
                  ocularHealth: widget.ocularHealth,
                  medicalHealth: selectedMedicalHealth,
                ),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select any medical health \ncomplications that apply 🩺",
                style: AppTypography().xxlBold,
                maxLines: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Select any medical health complications that apply to this patient. This will help us better understand your health history.",
                style: AppTypography().baseMedium,
                maxLines: 3,
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView(
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    children: RemoteConfigRepository.medicalHealthList
                        .map((e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (selectedMedicalHealth.contains(e.value)) {
                                    selectedMedicalHealth.remove(e.value);
                                  } else {
                                    selectedMedicalHealth.add(e.value!);
                                  }
                                });
                              },
                              child: SelectTab(
                                complaint: e,
                                isSelected: selectedMedicalHealth.contains(e.value),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
