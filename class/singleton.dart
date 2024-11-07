class Theme {
  static String themeMode = "light";
  static Theme _instance = Theme._private();

  // named va private constructor
  Theme._private() {}

  factory Theme() {
    return _instance;
  }

  String get getThemeMode => themeMode;
}
