import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opt_app/library/opt_app.dart';

class AddPhotos extends StatefulWidget {
  const AddPhotos({super.key});

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  List<String>? images = [];
  List<String>? localimages = [];
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  void picUploadImage(ImageSource imageSource) async {
    final image = await ImagePicker().pickImage(source: imageSource, imageQuality: 75);
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const LoadingAlert(message: "Uploading Picture");
    //     });

    // Reference ref = FirebaseStorage.instance.ref().child("emergency" + "pic.jpg");
    // await ref.putFile(File(image!.path));
    // setState(() {
    //   localimages!.add(image.path);
    // });
    // print(localimages);

    // ref.getDownloadURL().then((value) {
    //   print(value);
    //   setState(() {
    //     images!.add(value);
    //   });
    //   print(images);
    //   value.isNotEmpty ? Navigator.pop(context) : SizedBox();
    // });
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
                builder: (context) => const SelectComplaint(),
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
              GestureDetector(
                onTap: () {
                  // localimages!.length >= 1
                  //     ? setState(() {
                  //         images!.removeAt(0);
                  //         localimages!.removeAt(0);
                  //       })
                  //     : showBtnImageChoice(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: DottedBorder(
                      color: AppColors.primary.shade200,
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(14),
                      borderPadding: const EdgeInsets.all(12),
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
            ],
          ),
        ),
      ),
    );
  }
}
