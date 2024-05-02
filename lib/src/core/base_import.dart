export 'package:mobile_attendance/src/configs/index.dart';
export 'package:mobile_attendance/src/core/base_controller.dart';
export 'package:mobile_attendance/src/core/base_model.dart';
export 'package:mobile_attendance/src/core/base_widget.dart';
export 'package:mobile_attendance/src/helpers/index.dart';
export 'package:mobile_attendance/src/models/index.dart';
export 'package:mobile_attendance/src/routes/index.dart';
export 'package:mobile_attendance/src/services/index.dart';
export 'package:mobile_attendance/src/styles/cores/index.dart';
export 'package:mobile_attendance/src/utils/index.dart';
export 'package:mobile_attendance/src/widgets/index.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:get/get.dart';

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map(
        (str) => str.toCapitalized(),
      )
      .join(' ');
}
