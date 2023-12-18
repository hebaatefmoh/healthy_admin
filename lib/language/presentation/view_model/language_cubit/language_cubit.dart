
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/language/data/models/launguage_cached_helper.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_cubit.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_state.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());


  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode = await LanguageCachedHelper()
        .getCachedLanguageCode();
    emit(changeLocalState(Locale(cachedLanguageCode)));
  }


  Future<void> changeLanguage(String languagecode) async {
    await LanguageCachedHelper().cachedLanguageCode(languagecode);
    emit(changeLocalState(Locale(languagecode)));
  }
}