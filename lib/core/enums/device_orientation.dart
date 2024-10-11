import 'package:mpointe/core/common/layout/get_device_info.dart';
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: constant_identifier_names

enum DeviceType { PHONE, TAB, WEB, DEF }

enum DeviceOrientation { LANDSCAPE, PORTRAIT }

DeviceType dev_type = DeviceInfo().getcurrentDeviceType;

DeviceOrientation dev_orientation = DeviceInfo().getDeviceOrientation;
