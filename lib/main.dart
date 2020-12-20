import 'package:demoBlog/model/app.dart';
import 'package:demoBlog/page/tabPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_ckb_localization/flutter_ckb_localization.dart';
import 'package:flutter/rendering.dart';

void main() async {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final PageModel model = PageModel();
  Brightness get _currentBrightness =>
      InAppScreen.mediaQuery.platformBrightness;
  @override
  Widget build(BuildContext context) {
    InAppScreen.isTablet = InAppScreen.isTablet;
    return ScopedModel<PageModel>(
        model: model,
        child: CupertinoApp(
          home: LoginPage(),
          debugShowCheckedModeBanner: false,
          // ignore: missing_return
          builder: (BuildContext context,Widget child){
            CupertinoThemeData theme = CupertinoTheme.of(context).copyWith(
              brightness: MediaQuery.platformBrightnessOf(context),
            );
            CupertinoTextThemeData textTheme = theme.textTheme;
            return CupertinoTheme(
              data: theme,
              child: DefaultTextStyle(
                style: textTheme.textStyle,
                child: child,
              ),
            );
          },
        )
    );
  }
}
