import 'package:opt_app/library/opt_app.dart';
import 'package:intl/intl.dart';

displayCurrency(BuildContext context, double rate) {
  return 'R${NumberFormat().format(double.parse(rate.toStringAsFixed(2)))}';
}

String extractFirstSentence(String message) {
  RegExp regExp = RegExp(r'[^.]+');
  Match? match = regExp.firstMatch(message);
  return match != null ? match.group(0)! : '';
}
extension StringCasingExtension on String {
  String toTitleCase() {
    // Split the string by hyphens
    List<String> words = this.split('-');

    // Capitalize each word
    List<String> capitalizedWords = words.map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).toList();

    // Join the capitalized words with spaces
    return capitalizedWords.join(' ');
  }
}

String capitalizeFirstLetter(String message) {
  if (message.isEmpty) return '';
  return message.substring(0, 1).toUpperCase() + message.substring(1);
}

