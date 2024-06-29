// import 'package:bot_app/components/selector_alert.dart';
// import 'package:bot_app/utils/library/bot_app.dart';

// extension ShowSuccess on BuildContext {
//   void showSuccessModal({
//     String? message,
//     BuildContext? context,
//     int? duration,
//   }) {
//     Future.delayed(Duration(seconds: duration ?? 3), () {
//       Navigator.of(context!).pop();
//     });
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: false,
//       isDismissible: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 200),
//             child: SuccessComponent(
//               message: message,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension ShowError on BuildContext {
//   void showErrorModal({
//     String? message,
//     BuildContext? context,
//   }) {
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.of(context!).pop();
//     });
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: false,
//       isDismissible: false,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 200),
//             child: ErrorComponent(
//               message: message,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension ShowLoading on BuildContext {
//   void showLoadingModal({String? message}) {
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: false,
//       isDismissible: false,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 200),
//             child: ButtomLoadingComponent(
//               message: message,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension ShowInfoAlert on BuildContext {
//   void showInfoAlert({BuildContext? context, String? message, Widget? widget, int? duration = 1}) {
//     Future.delayed(Duration(seconds: duration!), () {
//       Navigator.of(context!).pop();
//     });
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: false,
//       isDismissible: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 200),
//             child: InfoAlertComponent(
//               message: message,
//               widget: widget,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension ShowGenericAlert on BuildContext {
//   void showGenericAlert({
//     String? message,
//     required AlertButtonType alertButtonType,
//     String? button1Text,
//     String? button2Text,
//     VoidCallback? onPressed1,
//     VoidCallback? onPressed2,
//     Widget? topWidget,
//   }) {
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: true,
//       isDismissible: false,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 310, minHeight: 100),
//             child: GenericAlert(
//               topWidget: topWidget,
//               alertButtonType: alertButtonType,
//               message: message,
//               button1Text: button1Text,
//               button2Text: button2Text,
//               onPressed1: onPressed1,
//               onPressed2: onPressed2,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension ShowSelectorAlert on BuildContext {
//   void showSelectorAlert({
//     final String? button1Text,
//     required final ShippingLineCallback callback,
//   }) {
//     showModalBottomSheet(
//       context: this,
//       isScrollControlled: true,
//       isDismissible: false,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxHeight: 350, minHeight: 100),
//             child: SelectorAlert(
//               callback: callback,
//               button1Text: button1Text,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
