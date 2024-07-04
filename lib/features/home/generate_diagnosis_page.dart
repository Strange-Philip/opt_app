import 'package:opt_app/components/cards/diagnosis_card.dart';
import 'package:opt_app/library/opt_app.dart';

class GenerateDiagnosisPage extends StatefulWidget {
  final List<String> complaints;
  final EyeForComplaint location;
  final List<String> ocularHealth;
  final List<String> medicalHealth;
  final List<Uint8List>? images;
  final String path;
  const GenerateDiagnosisPage(
      {super.key,
      required this.complaints,
      required this.location,
      required this.ocularHealth,
      required this.medicalHealth,
      this.images,
      required this.path});

  @override
  State<GenerateDiagnosisPage> createState() => _GenerateDiagnosisPageState();
}

class _GenerateDiagnosisPageState extends State<GenerateDiagnosisPage> {
  final Gemini gemini = Gemini.instance;
  bool loading = true;
  String generatedText = "";
  List<TentDiagnosis> diagnosisList = [];
  bool error = false;

  Future<bool> isValidJson(String jsonString) async {
    try {
      await jsonDecode(jsonString);
      debugPrint("valid json");
      return true;
    } catch (e) {
      debugPrint("invalid json");
      return false;
    }
  }

  void generateitinerary() {
    try {
      diagnosisList.clear();
      setState(() {
        loading = true;
        generatedText = "";
        diagnosisList = [];
        error = false;
      });
      String question =
          """You are an expert eye care physician, Give top 3 tentative diagnoses arranged in order of most likely to least likely, for a patient with these chief complaints ${widget.complaints} on ${widget.location.name == 'left' ? 'the left eye' : widget.location.name == 'right' ? 'the right eye' : 'both eyes'} with ${widget.ocularHealth.toString() == "[none]" ? "no ocular health history" : "these ocular health complications ${widget.ocularHealth}"} and ${widget.medicalHealth.toString() == "[none]" ? "no medical health history" : "these medical health complications ${widget.medicalHealth}"} and has this eye in the image , create exactly 3 tentative in this exact format; and go straight to the point :
   [
    {
     "diagnosis": "tentative diagnosis here ",
     "reason": "reason for diagnosis",
     "symptoms": "symptoms here in List string format ",
     "ocularTests": "ocular tests to comfirm tentative diagnosis here in List string format"
},
   ]
  """;
      debugPrint(question);
      gemini
          .textAndImage(
              text: question,
              images: widget.images!,
              safetySettings: [
                SafetySetting(
                  category: SafetyCategory.hateSpeech,
                  threshold: SafetyThreshold.blockLowAndAbove,
                ),
              ],
              generationConfig: GenerationConfig(
                temperature: 0.7,
              ))
          .then((event) async {
        debugPrint("Json format");
        debugPrint(event?.content!.parts!.first.toJson().toString());
        debugPrint(event?.content!.parts!.first.text.toString());
        var text = event!.content!.parts!.first.text.toString();
        if (await isValidJson(text) == true) {
          for (var jsonString in [text]) {
            for (var item in jsonDecode(jsonString)) {
              diagnosisList.length >= 3 ? null : diagnosisList.add(TentDiagnosis.fromJson(item));
            }
          }
          setState(() {
            generatedText = "";
            generatedText = event.content!.parts!.first.text.toString();
            loading = false;
          });
        } else if (await isValidJson(text) == false) {
          debugPrint("Regerating");
          setState(() {
            loading = false;
            error = true;
          });
          generateitinerary();
        } else {
          setState(() {
            loading = false;
            error = true;
          });
        }
      });
    } catch (e) {
      setState(() {
        loading = false;
        error = true;
      });
      debugPrint(e.toString());
    }
  }

  @override
  void initState() {
    generateitinerary();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) async {
      generateitinerary();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return loading && generatedText.isEmpty
        ? const Material(color: Colors.transparent, child: LoadingAnimation())
        : Scaffold(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: FileImage(File(widget.path)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Here are the tentative diagnosis for your patient:",
                    style: AppTypography().xxlBold,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  generatedText.isEmpty || generatedText == "[]" || error
                      ? buildErrorPage()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: diagnosisList.map((diagnosis) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: TentDiagnosisCard(
                                tentDiagnosis: diagnosis,
                                index: diagnosisList.indexOf(diagnosis) + 1,
                              ),
                            );
                          }).toList(),
                        ),
                  (loading && generatedText.isEmpty) || error
                      ? const SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PrimaryButton(
                                text: "Save",
                                onPressed: () {},
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      generateitinerary();
                                    },
                                    child: Text(
                                      "Doesn't look right? Regenerate",
                                      style: AppTypography().baseSemiBold.copyWith(
                                          color: AppColors.primary.shade400,
                                          decoration: TextDecoration.underline,
                                          decorationColor: AppColors.primary.shade400),
                                    ),
                                  )),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                ],
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
                style: AppTypography().xxxxlBold,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "We couldn't generate a diagnosis for your patient. Please try again.",
                style: AppTypography().baseSemiBold,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                  width: 190,
                  child: PrimaryButton(
                    text: "Regenerate",
                    onPressed: () => generateitinerary(),
                  )),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({
    super.key,
  });

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppLottie.generating,
              height: 180,
              width: 200,
            ),
            Text(
              "Generating Diagnosis...",
              style: AppTypography().baseSemiBold.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
