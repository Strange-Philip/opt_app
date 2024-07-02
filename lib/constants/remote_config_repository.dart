import 'package:opt_app/library/opt_app.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigRepository {
  static final _remoteConfig = FirebaseRemoteConfig.instance;

  static List<Complaint> complaintList = [];
  static List<Complaint> medicalHealthList = [];
  static List<Complaint> ocularHealthList = [];

  static Future init() async {
    try {
      if (!kIsWeb) _remoteConfig.onConfigUpdated.listen(_updateConfigs, onError: (_) {});
      await _setDefaultConfigs();

      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: kDebugMode ? const Duration(minutes: 1) : const Duration(seconds: 10),
          minimumFetchInterval: kDebugMode ? const Duration(hours: 4) : const Duration(minutes: 1),
        ),
      );

      await _remoteConfig.fetchAndActivate();
    } finally {
      await _updateConfigs(RemoteConfigUpdate({}));
    }
  }

  static Future _updateConfigs(RemoteConfigUpdate remoteConfigUpdate) async {
    await _remoteConfig.activate();
    complaintList = Set.from(jsonDecode(_remoteConfig.getString(kcomplaints)))
        .map((e) => Complaint.fromJson(e))
        .toList();

    medicalHealthList = Set.from(jsonDecode(_remoteConfig.getString(kmedicalHealth)))
        .map((e) => Complaint.fromJson(e))
        .toList();
    ocularHealthList = Set.from(jsonDecode(_remoteConfig.getString(kocularHealth)))
        .map((e) => Complaint.fromJson(e))
        .toList();
  }

  static Future _setDefaultConfigs() async {
    final defaults = await _getDefaultData();
    return _remoteConfig.setDefaults(defaults);
  }

  static Future<dynamic> _getDefaultData() async {
    final String response = await rootBundle.loadString('assets/remote_config_defaults.json');
    return await jsonDecode(response);
  }
}
