import 'package:opt_app/library/opt_app.dart';
import 'package:opt_app/models/savedDiagnosis.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Hive.initFlutter();
  Hive.registerAdapter(DiagnosisAdapter());
  Hive.registerAdapter(SavedDiagnosisAdapter());
  diagnosesBox = await Hive.openBox<SavedDiagnosis>('diagnosisBox');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
      title: 'EyeDxAi',
      theme: AppTheme().light,
      home: const OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
