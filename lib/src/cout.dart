import 'dart:developer' show log;
import 'package:cout/src/colors.dart' show TextColor;
import 'package:flutter/foundation.dart' show kDebugMode;

final class Cout {
  const Cout._();

  // Core.
  static const String _reset = '\x1B[0m';

  static void info(dynamic data) {
    if (kDebugMode) log('${TextColor.brightPurple}[info] $data$_reset');
  }

  static void route(dynamic id) {
    if (kDebugMode) log('${TextColor.white}[route] $id$_reset');
  }

  static void success(dynamic data) {
    if (kDebugMode) log('${TextColor.brightGreen}[success] $data$_reset');
  }

  static void warning(dynamic data) {
    if (kDebugMode) log('${TextColor.brightYellow}[warning] $data$_reset');
  }

  static void error(dynamic data) {
    if (kDebugMode) log('${TextColor.brightRed}[error] $data$_reset');
  }

  static void custom(
    dynamic data, {
    String? backgroundColor,
    String? frontColor,
  }) {
    if (kDebugMode) {
      log(
        '${backgroundColor ?? _reset}${frontColor ?? _reset}[custom] $data$_reset',
      );
    }
  }
}
