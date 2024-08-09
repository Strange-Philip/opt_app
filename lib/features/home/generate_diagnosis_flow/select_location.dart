import 'package:opt_app/library/opt_app.dart';

class SelectLocationPage extends StatefulWidget {
    final List<String> complaints;
  const SelectLocationPage({super.key, required this.complaints});

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  EyeForComplaint? eyeForComplaint;
  List<EyeForComplaint> eyeLocationList = [
    EyeForComplaint.left,
    EyeForComplaint.right,
    EyeForComplaint.both,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppbar(
        hasLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(26, 0, 26, 0),
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
                "Where is the \ncomplaint located? 📍",
                style: AppTypography().xxlBold,
                maxLines: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView(
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    children: eyeLocationList
                        .map((e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  eyeForComplaint = e;
                                });
                              },
                              child: LocationCard(
                                eyeComplaintLocation: e,
                                isSelected: eyeForComplaint == e,
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PrimaryButton(
                text: "Next",
                isEnabled: eyeForComplaint != null,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  OcularHealthSelect(
                        complaints: widget.complaints,
                        location: eyeForComplaint!,
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
