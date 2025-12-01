import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/providers/theme_provider.dart';

final themeProvider = Provider<ThemeMode>((ref){
  return ref.watch(themeModeWatcher).value ?? ThemeMode.system;
});