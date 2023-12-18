
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/theme_data/data/shared_pref.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_state.dart';


class DarkThemeCubit extends Cubit<DarkThemeState> {
  DarkThemeCubit() : super(DarkThemeInitial());
  DarkThemePrefs darkThemePrefs =DarkThemePrefs();
  bool _darktheme=false;
  bool get getdarkTheme=>_darktheme ;


   setDarkTheme(bool value){
    _darktheme=value;
    darkThemePrefs.setDarkTheme(value);
    emit(getDarkTheme());


  }

}
