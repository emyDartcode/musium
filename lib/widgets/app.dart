import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/providers.dart';
import 'package:musium/core/theme.dart';
import 'package:musium/features/dashboard/dashboard.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,

      debugShowCheckedModeBanner: false,

      home: const Dashboard()
    );
  }
}
