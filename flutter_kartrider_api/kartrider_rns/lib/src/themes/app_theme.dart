import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartrider_rns/src/themes/app_theme_notifier.dart';

class AppTheme {
  static final int themeLight = 1;
  static final int themeDark = 2;

  static CustomAppTheme customTheme = getCustomAppTheme(AppThemeNotifier.theme);
  static ThemeData theme = getThemeFromThemeMode(AppThemeNotifier.theme);

  AppTheme._();

  static CustomAppTheme getCustomAppTheme(int? themeMode) {
    if (themeMode == themeLight) {
      return CustomAppTheme.lightCustomAppTheme;
    } else if (themeMode == themeDark) {
      return CustomAppTheme.darkCustomAppTheme;
    }
    return CustomAppTheme.darkCustomAppTheme;
  }

  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle getTextStyle(TextStyle? textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize != null ? fontSize : textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      finalColor = xMuted
          ? textStyle!.color!.withAlpha(160)
          : (muted ? textStyle!.color!.withAlpha(200) : textStyle!.color);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    return GoogleFonts.ibmPlexSans(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  //앱 바 텍스트
  static final TextTheme lightAppBarTextTheme = TextTheme(
    headline1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 102, color: Color(0xff495057))),
    headline2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 64, color: Color(0xff495057))),
    headline3: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 51, color: Color(0xff495057))),
    headline4: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 36, color: Color(0xff495057))),
    headline5: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 25, color: Color(0xff495057))),
    headline6: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 18, color: Color(0xff495057))),
    subtitle1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 17, color: Color(0xff495057))),
    subtitle2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff495057))),
    bodyText1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 16, color: Color(0xff495057))),
    bodyText2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 14, color: Color(0xff495057))),
    button: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff495057))),
    caption: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 13, color: Color(0xff495057))),
    overline: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 11, color: Color(0xff495057))),
  );
  static final TextTheme darkAppBarTextTheme = TextTheme(
    headline1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 102, color: Color(0xffffffff))),
    headline2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 64, color: Color(0xffffffff))),
    headline3: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 51, color: Color(0xffffffff))),
    headline4: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 36, color: Color(0xffffffff))),
    headline5: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 25, color: Color(0xffffffff))),
    headline6: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 20, color: Color(0xffffffff))),
    subtitle1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 17, color: Color(0xffffffff))),
    subtitle2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xffffffff))),
    bodyText1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 16, color: Color(0xffffffff))),
    bodyText2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 14, color: Color(0xffffffff))),
    button: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xffffffff))),
    caption: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 13, color: Color(0xffffffff))),
    overline: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 11, color: Color(0xffffffff))),
  );

  //텍스트 테마 설정
  static final TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 102, color: Color(0xff4a4c4f))),
    headline2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 64, color: Color(0xff4a4c4f))),
    headline3: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 51, color: Color(0xff4a4c4f))),
    headline4: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 36, color: Color(0xff4a4c4f))),
    headline5: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 25, color: Color(0xff4a4c4f))),
    headline6: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 18, color: Color(0xff4a4c4f))),
    subtitle1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 17, color: Color(0xff4a4c4f))),
    subtitle2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodyText1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 16, color: Color(0xff4a4c4f))),
    bodyText2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 14, color: Color(0xff4a4c4f))),
    button: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    caption: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 13, color: Color(0xff4a4c4f))),
    overline: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 11, color: Color(0xff4a4c4f))),
  );
  static final TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 102, color: Colors.white)),
    headline2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 64, color: Colors.white)),
    headline3: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 51, color: Colors.white)),
    headline4: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 36, color: Colors.white)),
    headline5: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 25, color: Colors.white)),
    headline6: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 18, color: Colors.white)),
    subtitle1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 17, color: Colors.white)),
    subtitle2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Colors.white)),
    bodyText1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 16, color: Colors.white)),
    bodyText2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 14, color: Colors.white)),
    button: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 15, color: Colors.white)),
    caption: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 13, color: Colors.white)),
    overline: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(fontSize: 11, color: Colors.white)),
  );

  //색상 테마
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xff3d63ff),
    canvasColor: Colors.transparent,
    backgroundColor: Color(0xfff6f6f6),
    scaffoldBackgroundColor: Color(0xfff6f6f6),
    appBarTheme: AppBarTheme(
      textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xff495057),
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff495057), size: 24),
    ),
    navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme:
            IconThemeData(color: Color(0xff3d63ff), opacity: 1, size: 24),
        unselectedIconTheme:
            IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: Color(0xff3d63ff)),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    colorScheme: ColorScheme.light(
        primary: Color(0xff3d63ff),
        onPrimary: Colors.white,
        primaryVariant: Color(0xff0055ff),
        secondary: Color(0xff495057),
        secondaryVariant: Color(0xff3cd278),
        onSecondary: Colors.white,
        surface: Color(0xffe2e7f1),
        background: Color(0xfff3f4f7),
        onBackground: Color(0xff495057)),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: EdgeInsets.all(0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xff3d63ff)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xff3d63ff),
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: Color(0xff3d63ff),
        hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white),
    dividerColor: Color(0xffd1d1d1),
    errorColor: Color(0xfff0323c),
    cardColor: Colors.white,
    accentColor: Color(0xff3d63ff),
    popupMenuTheme: PopupMenuThemeData(
      color: Color(0xffffffff),
      textStyle:
          lightTextTheme.bodyText2!.merge(TextStyle(color: Color(0xff495057))),
    ),
    bottomAppBarTheme:
        BottomAppBarTheme(color: Color(0xffffffff), elevation: 2),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Color(0xff3d63ff),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Color(0xff3d63ff),
      inactiveTrackColor: Color(0xff3d63ff).withAlpha(140),
      trackShape: RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: Color(0xff3d63ff),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      canvasColor: Colors.transparent,
      primaryColor: Color(0xff3d63ff),
      scaffoldBackgroundColor: Color(0xff464c52),
      backgroundColor: Color(0xff464c52),
      appBarTheme: AppBarTheme(
        textTheme: darkAppBarTextTheme,
        actionsIconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        color: Color(0xff2e343b),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      colorScheme: ColorScheme.dark(
        primary: Color(0xff3d63ff),
        primaryVariant: Color(0xff3d63ff),
        secondary: Color(0xff00cc77),
        secondaryVariant: Color(0xff00cc77),
        background: Color(0xff343a40),
        onPrimary: Colors.white,
        onBackground: Colors.white,
        onSecondary: Colors.white,
        surface: Color(0xff585e63),
      ),
      cardTheme: CardTheme(
        color: Color(0xff37404a),
        shadowColor: Color(0xff000000),
        elevation: 1,
        margin: EdgeInsets.all(0),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
      indicatorColor: Colors.white,
      disabledColor: Color(0xffa3a3a3),
      highlightColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff3d63ff)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.white70),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.white70)),
      ),
      dividerColor: Color(0xff363636),
      errorColor: Colors.orange,
      cardColor: Color(0xff282a2b),
      splashColor: Colors.white.withAlpha(100),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff3d63ff),
          splashColor: Colors.white.withAlpha(100),
          highlightElevation: 8,
          elevation: 4,
          focusColor: Color(0xff3d63ff),
          hoverColor: Color(0xff3d63ff),
          foregroundColor: Colors.white),
      accentColor: Color(0xff3d63ff),
      popupMenuTheme: PopupMenuThemeData(
        color: Color(0xff37404a),
        textStyle: lightTextTheme.bodyText2!
            .merge(TextStyle(color: Color(0xffffffff))),
      ),
      bottomAppBarTheme:
          BottomAppBarTheme(color: Color(0xff464c52), elevation: 2),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Color(0xff495057),
        labelColor: Color(0xff3d63ff),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Color(0xff3d63ff),
        inactiveTrackColor: Color(0xff3d63ff).withAlpha(100),
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: Color(0xff3d63ff),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData());

  static ThemeData getThemeFromThemeMode(int themeMode) {
    if (themeMode == themeLight) {
      return lightTheme;
    } else if (themeMode == themeDark) {
      return darkTheme;
    }
    return lightTheme;
  }

  static NavigationBarTheme getNavigationThemeFromMode(int themeMode) {
    print(themeMode);
    NavigationBarTheme navigationBarTheme = NavigationBarTheme();
    if (themeMode == themeLight) {
      navigationBarTheme.backgroundColor = Colors.white;
      navigationBarTheme.selectedItemColor = Color(0xff3d63ff);
      navigationBarTheme.unselectedItemColor = Color(0xff495057);
      navigationBarTheme.selectedOverlayColor = Color(0x383d63ff);
    } else if (themeMode == themeDark) {
      navigationBarTheme.backgroundColor = Color(0xff37404a);
      navigationBarTheme.selectedItemColor = Color(0xff37404a);
      navigationBarTheme.unselectedItemColor = Color(0xffd1d1d1);
      navigationBarTheme.selectedOverlayColor = Color(0xffffffff);
    }
    return navigationBarTheme;
  }
}

class CustomAppTheme {
  final Color bgLayer1,
      bgLayer2,
      bgLayer3,
      bgLayer4,
      disabledColor,
      onDisabled,
      colorInfo,
      colorWarning,
      colorSuccess,
      colorError,
      shadowColor,
      onInfo,
      onWarning,
      onSuccess,
      onError;

  final Color groceryBg1, groceryBg2;
  final Color groceryPrimary, groceryOnPrimary;

  final Color medicarePrimary, medicareOnPrimary;

  final Color cookifyPrimary, cookifyOnPrimary;

  final Color lightBlack,
      red,
      green,
      yellow,
      orange,
      blue,
      purple,
      pink,
      brown,
      violet,
      indigo;

  CustomAppTheme({
    this.bgLayer1 = const Color(0xffffffff),
    this.bgLayer2 = const Color(0xfff8faff),
    this.bgLayer3 = const Color(0xfff8f8f8),
    this.bgLayer4 = const Color(0xffdcdee3),
    this.disabledColor = const Color(0xffdcc7ff),
    this.onDisabled = const Color(0xffffffff),
    this.colorWarning = const Color(0xffffc837),
    this.colorInfo = const Color(0xffff784b),
    this.colorSuccess = const Color(0xff3cd278),
    this.shadowColor = const Color(0xff1f1f1f),
    this.onInfo = const Color(0xffffffff),
    this.onWarning = const Color(0xffffffff),
    this.onSuccess = const Color(0xffffffff),
    this.colorError = const Color(0xfff0323c),
    this.onError = const Color(0xffffffff),

    //커스텀 색상 1

    this.groceryPrimary = const Color(0xff10bb6b),
    this.groceryOnPrimary = const Color(0xffffffff),
    this.groceryBg1 = const Color(0xfffbfbfb),
    this.groceryBg2 = const Color(0xfff5f5f5),

    //커스텀 색상 2
    this.cookifyPrimary = const Color(0xffdf7463),
    this.cookifyOnPrimary = const Color(0xffffffff),

    //커스텀 색상 3
    this.lightBlack = const Color(0xffa7a7a7),
    this.red = const Color(0xffFF0000),
    this.green = const Color(0xff008000),
    this.yellow = const Color(0xfffff44f),
    this.orange = const Color(0xffFFA500),
    this.blue = const Color(0xff0000ff),
    this.purple = const Color(0xff800080),
    this.pink = const Color(0xffFFC0CB),
    this.brown = const Color(0xffA52A2A),
    this.indigo = const Color(0xff4B0082),
    this.violet = const Color(0xff9400D3),

    //커스텀 색상 4
    this.medicarePrimary = const Color(0xff6d65df),
    this.medicareOnPrimary = const Color(0xffffffff),
  });

  static final CustomAppTheme lightCustomAppTheme = CustomAppTheme(
    bgLayer1: Color(0xffffffff),
    bgLayer2: Color(0xfff9f9f9),
    bgLayer3: Color(0xffe8ecf4),
    bgLayer4: Color(0xffdcdee3),
    disabledColor: Color(0xff636363),
    onDisabled: Color(0xffffffff),
    colorInfo: Color(0xffff784b),
    colorWarning: Color(0xffffc837),
    colorSuccess: Color(0xff3cd278),
    shadowColor: Color(0xffd9d9d9),
    onInfo: Color(0xffffffff),
    onSuccess: Color(0xffffffff),
    onWarning: Color(0xffffffff),
    colorError: Color(0xfff0323c),
    onError: Color(0xffffffff),
  );

  static final CustomAppTheme darkCustomAppTheme = CustomAppTheme(
      bgLayer1: Color(0xff212429),
      bgLayer2: Color(0xff282930),
      bgLayer3: Color(0xff303138),
      bgLayer4: Color(0xff383942),
      disabledColor: Color(0xffbababa),
      onDisabled: Color(0xff000000),
      colorInfo: Color(0xffff784b),
      colorWarning: Color(0xffffc837),
      colorSuccess: Color(0xff3cd278),
      shadowColor: Color(0xff202020),
      onInfo: Color(0xffffffff),
      onSuccess: Color(0xffffffff),
      onWarning: Color(0xffffffff),
      colorError: Color(0xfff0323c),
      onError: Color(0xffffffff),
      groceryBg1: Color(0xff212429),
      groceryBg2: Color(0xff282930));
}

class NavigationBarTheme {
  Color? backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}
