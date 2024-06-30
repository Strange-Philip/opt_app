import 'package:opt_app/library/opt_app.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(
    apiKey: Config.geminiApiKey,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  await RemoteConfigRepository.init();
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().light,
      home: const OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
