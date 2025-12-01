import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeProvider extends AsyncNotifier<ThemeMode>{
  @override
  ThemeMode build(){
    getTheme();
    return ThemeMode.system;
  }

  //Get Theme
  Future<void> getTheme() async{
    final sharedPref = await SharedPreferences.getInstance();
    final themeMode = sharedPref.getBool('themeMde');

    switch(themeMode){
      case true:
        
        state = const AsyncValue.data(ThemeMode.light);
        break;
      case false:
        state = const AsyncValue.data(ThemeMode.dark);
        break;
      case null:
        state = const AsyncValue.data(ThemeMode.system);
        break;
    }
  }

  //Set Theme
  Future<void> setTheme(bool value) async{
    final previousState = state;

    final sharedPref = await SharedPreferences.getInstance();

    final save = await AsyncValue.guard(()async {
      return await sharedPref.setBool('themeMode', value);
    });

    switch(value){
      case true:
        state = const AsyncValue.data(ThemeMode.light);
        break;
      case false:
        state = const AsyncValue.data(ThemeMode.dark);
        break;
    }

    if(save.hasError){
      state = previousState;
    }
    
  }
}

final themeModeWatcher = AsyncNotifierProvider<ThemeModeProvider, ThemeMode>(ThemeModeProvider.new);