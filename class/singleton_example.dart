import 'singleton.dart';

void main(List<String> args) {
  Theme theme = Theme();
  print(Theme.themeMode);


  Theme theme3 = Theme();
  Theme theme5 = Theme();


  Theme theme2 = Theme();
  print(Theme.themeMode);

  Theme.themeMode = "dark";

  print(theme.getThemeMode);
  print(theme2.getThemeMode);
}
