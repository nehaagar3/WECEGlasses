import 'package:flutter/material.dart';
import 'package:wece_glasses/device_screens/screen_handler.dart';
import 'package:wece_glasses/globals.dart';

class EmptyScreen extends DeviceScreen {
  @override
  void startScreen() {
    bleHandler.bluetoothWrite("", getScreenNum());
  }

  @override
  void stopScreen() {}

  @override
  IconData getIcon() {
    return Icons.browser_not_supported;
  }

  @override
  int getScreenNum() {
    return 0;
  }
}
