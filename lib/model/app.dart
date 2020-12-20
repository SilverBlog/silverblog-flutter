import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

class PageModel extends Model {
  static PageModel of(BuildContext context) =>
      ScopedModel.of<PageModel>(context);
}


class InAppScreen {
  const InAppScreen._();
  static void updateStatusBarStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }
  static MediaQueryData get mediaQuery => MediaQueryData.fromWindow(ui.window);
  static Brightness inAppBrightness = MediaQueryData.fromWindow(ui.window).platformBrightness;
  static bool isTablet = MediaQueryData.fromWindow(ui.window).size.shortestSide>=600;
}

