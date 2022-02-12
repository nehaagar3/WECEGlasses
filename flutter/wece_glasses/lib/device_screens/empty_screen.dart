import 'package:flutter/material.dart';
import 'package:wece_glasses/bluetooth.dart';
import 'package:wece_glasses/device_screens/screen_handler.dart';

class EmptyScreen extends DeviceScreen {
  @override
  void startScreen() {
    bluetoothWrite("");
  }

  @override
  void stopScreen() {}

  @override
  IconData getIcon() {
    return Icons.beach_access;
  }
}