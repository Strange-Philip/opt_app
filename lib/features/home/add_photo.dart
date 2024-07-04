import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opt_app/library/opt_app.dart';

class AddPhotos extends StatefulWidget {
  final List<String> complaints;
  final EyeForComplaint location;
  final List<String> ocularHealth;
  final List<String> medicalHealth;

  const AddPhotos(
      {super.key,
      required this.complaints,
      required this.location,
      required this.ocularHealth,
      required this.medicalHealth});

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  List<Uint8List>? images = [];
  XFile? image;
  void picUploadImage(ImageSource imageSource) async {
    final image = await ImagePicker().pickImage(source: imageSource, imageQuality: 90);

    if (image == null) {
      return;
    } else {
      setState(() {
        this.image = image;
        images = [File(image.path).readAsBytesSync()];
      });
    }
  }

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
          isEnabled: images!.isNotEmpty,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GenerateDiagnosisPage(
                  complaints: widget.complaints,
                  location: widget.location,
                  ocularHealth: widget.ocularHealth,
                  medicalHealth: widget.medicalHealth,
                  images: images,
                  path: image!.path,
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
                "Add photos of the \neye/eyes 📸",
                style: AppTypography().xxlBold,
                maxLines: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Submit an image either by taking a picture with your camera or adding an image from your gallery.",
                style: AppTypography().baseMedium,
                maxLines: 2,
              ),
              const SizedBox(
                height: 24,
              ),
              image != null
                  ? Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                          image: FileImage(File(image!.path)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        showBtnImageChoice(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: DottedBorder(
                            color: AppColors.primary.shade200,
                            strokeWidth: 2,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(14),
                            borderPadding: const EdgeInsets.all(8),
                            dashPattern: const <double>[20, 5],
                            child: Center(
                              child: Text(
                                "Add photo",
                                style: AppTypography().baseSemiBold.copyWith(
                                      color: AppColors.primary.shade400,
                                    ),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
              image != null
                  ? Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: () {
                          showBtnImageChoice(context);
                        },
                        child: Center(
                          child: Text(
                            "Change Image",
                            style: AppTypography().baseSemiBold.copyWith(
                                  color: AppColors.primary.shade400,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ))
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  void showBtnImageChoice(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return StatefulBuilder(builder: (BuildContext context, StateSetter setBtnState) {
            return Container(
                color: Colors.transparent,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).size.height * 0.75,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Pick Image Source",
                                    style: AppTypography().xxlBold.copyWith(
                                          color: AppColors.black,
                                        )),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.gray.shade100,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.symmetric(
                                          horizontal: 12, vertical: 8),
                                      child: Center(
                                        child: Text("cancel",
                                            style: AppTypography().baseMedium.copyWith(
                                                  color: AppColors.black,
                                                )),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: ListTile(
                              leading: SvgPicture.asset(AppIcons.camera),
                              title: Text(
                                "Camera",
                                style: AppTypography().largeMedium,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                picUploadImage(ImageSource.camera);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: ListTile(
                              leading: SvgPicture.asset(AppIcons.photo),
                              title: Text(
                                "Gallery",
                                style: AppTypography().largeMedium,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                picUploadImage(ImageSource.gallery);
                              },
                            ),
                          ),
                        ],
                      ),
                    )));
          });
        });
  }
}
