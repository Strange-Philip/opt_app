import 'package:opt_app/library/opt_app.dart';

class SelectComplaint extends StatefulWidget {
  const SelectComplaint({super.key});

  @override
  State<SelectComplaint> createState() => _SelectComplaintState();
}

class _SelectComplaintState extends State<SelectComplaint> {
  List<String> selectedComplaints = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppbar(
        hasLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
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
                "What complaints does your \npatient have? 🤒",
                style: AppTypography().xxlBold,
                maxLines: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Select all that apply",
                style: AppTypography().baseSemiBold.copyWith(color: AppColors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 6,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: RemoteConfigRepository.complaintList
                        .map((e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (selectedComplaints.contains(e.value)) {
                                    selectedComplaints.remove(e.value);
                                  } else {
                                    selectedComplaints.add(e.value!);
                                  }
                                });
                              },
                              child: ComplaintChip(
                                complaint: e,
                                isSelected: selectedComplaints.contains(e.value),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(),
              ),
              PrimaryButton(
                text: "Next",
                isEnabled: selectedComplaints.isNotEmpty,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectLocationPage(
                        complaints: selectedComplaints,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
