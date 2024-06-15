clean: 
	fvm flutter clean &&  fvm flutter pub get

build_runner: 
	fvm flutter pub run build_runner build --delete-conflicting-outputs

splash_plus_icons: 
	fvm flutter pub get && fvm flutter pub run flutter_native_splash:create && fvm flutter pub run flutter_launcher_icons:main 

build_ipa_production:
	fvm flutter build ipa --target lib/main.dart && open /Users/philip/Desktop/me/projects/opt_app/build/ios/archive/Runner.xcarchive

build_appbundle_prodution:
	fvm flutter build appbundle --target lib/main.dart

build_apk_prodution:
	fvm flutter build apk --split-per-abi --target lib/main.dart

pod_repo_update:
	cd ios && pod install --repo-update

.PHONY: build_runner build_ipa