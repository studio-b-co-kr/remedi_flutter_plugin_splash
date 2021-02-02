import 'dart:developer' as dev;
import 'dart:io';
import 'dart:ui' as ui;

import 'package:device_info/device_info.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_user_agent/flutter_user_agent.dart';
import 'package:package_info/package_info.dart';
import 'package:unique_ids/unique_ids.dart';

import 'data/local/app_preferences.dart';

class AppConfig {
  static String baseUrl;
  static String baseWebUrl;
  static bool isRelease;
  static String endpoint;
  static String appVersion;
  static String buildNumber;
  static bool enablePrintLog;
  static String osVersion;
  static int osVersionSdk = 0;
  static String deviceManufacturer;
  static String deviceModel;
  static String adId;
  static String userAgent;

  // set device info.
  static Future init() async {
    return await Future.wait([
      setAdId(),
      setPackageInfo(),
      setDeviceInfo(),
      setUserAgent(),
    ]);
  }

  /// baseUrl, baseWebUrl, endpoint flavor, logging
  /// user set this config in main()
  static setFlavorConfig(
      {String baseUrl,
      String baseWebUrl,
      bool isRelease,
      String endpoint,
      bool enablePrintLog}) {
    AppConfig.baseUrl = baseUrl;
    AppConfig.baseWebUrl = baseWebUrl;
    AppConfig.isRelease = isRelease;
    AppConfig.endpoint = endpoint;
    AppConfig.enablePrintLog = enablePrintLog;
  }

  static String get platform {
    if (Platform.isIOS) {
      return "ios";
    }

    if (Platform.isAndroid) {
      return "android";
    }

    if (Platform.isFuchsia) {
      return "fuchsia";
    }

    if (Platform.isLinux) {
      return "linux";
    }

    if (Platform.isMacOS) {
      return "macOs";
    }

    if (Platform.isWindows) {
      return "windows";
    }

    return "unknown";
  }

  static Future setAdId() async {
    adId = await UniqueIds.adId;
  }

  static Future setPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    AppConfig.appVersion = packageInfo.version;
    AppConfig.buildNumber = packageInfo.buildNumber;
  }

  static Future setDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    try {
      if (Platform.isIOS) {
        IosDeviceInfo info = await deviceInfo.iosInfo;
        osVersion = info.systemVersion;
        List<String> split = osVersion.split(".");
        osVersionSdk = int.parse(split[0]);
        deviceManufacturer = "apple";
        deviceModel = info.model;
      }

      if (Platform.isAndroid) {
        AndroidDeviceInfo info = await deviceInfo.androidInfo;
        osVersion = info.version.release;
        osVersionSdk = info.version.sdkInt;
        deviceManufacturer = info.manufacturer;
        deviceModel = info.model;
      }
    } on PlatformException catch (e) {}
  }

  static Future setUserAgent() async {
    try {
      userAgent = await FlutterUserAgent.getPropertyAsync('userAgent');
    } catch (e) {}
  }

  static Future<String> get appId => AppPreferences.instance.appId;

  static Future<String> get fcmToken => FirebaseMessaging().getToken();

  static void log() async {
    dev.log(baseUrl, name: "baseUrl");
    dev.log(baseWebUrl, name: "webBaseUrl");
    dev.log("$isRelease", name: "isRelease");
    dev.log(endpoint, name: "endpoint");
    dev.log(appVersion, name: "appVersion");
    dev.log(buildNumber, name: "buildNumber");
    dev.log(platform, name: "platform");
    dev.log(osVersion, name: "osVersion");
    dev.log("$osVersionSdk", name: "osVersionSdk");
    dev.log(deviceManufacturer, name: "deviceManufacturer");
    dev.log(deviceModel, name: "deviceModel");
    dev.log(adId, name: "adId");
    dev.log("${await AppPreferences.instance.appId}", name: "deviceId");
    dev.log("${ui.window.physicalSize.width}", name: "physicalSize.width");
    dev.log("${ui.window.devicePixelRatio}", name: "devicePixelRatio");
  }
}
