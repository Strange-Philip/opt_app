import 'package:lottie/lottie.dart';
import 'package:opt_app/library/opt_app.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Lottie.asset(AppLottie.intro),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Welcome to \nOpt App",
            style: AppTypography().largeMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          const PrimaryButton(text: "Let's go")
        ],
      ),
    );
  }
}
