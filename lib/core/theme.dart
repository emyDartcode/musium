import 'package:flutter/material.dart';
import 'package:musium/core/color.dart';

class AppTheme{
  static ThemeData get lightTheme{
    return ThemeData(
      brightness: Brightness.light,
      textTheme: textTheme(),
      outlinedButtonTheme: outlinedButtonTheme(Colors.black),
      iconButtonTheme: iconButtonTheme(Colors.white),
      iconTheme: iconTheme(Colors.black),


    );
  }


  static ThemeData get darkTheme{
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: textTheme(),
      outlinedButtonTheme: outlinedButtonTheme(Colors.white),
      iconButtonTheme: iconButtonTheme(Colors.black),
      iconTheme: iconTheme(Colors.white),


    );
  }
}


TextTheme textTheme(){
  return const TextTheme( 
    titleLarge: TextStyle(
      // fontFamily: ,
      fontSize: 27,
      fontWeight: .w700,
      overflow: .ellipsis,
    ),

    titleMedium: TextStyle(
      // fontFamily: ,
      fontSize: 24,
      fontWeight: .w700,
      overflow: .ellipsis,
    ),

    titleSmall: TextStyle(
      // fontFamily: ,
      fontSize: 20,
      fontWeight: .w700,
      overflow: .ellipsis,
    ),

    bodyLarge: TextStyle(
      // fontFamily: ,
      fontSize: 16,
      fontWeight: .w600,
      overflow: .ellipsis,
    ),

    bodyMedium: TextStyle(
      // fontFamily: ,
      fontSize: 14,
      fontWeight: .w600,
      overflow: .ellipsis,
    ),

    bodySmall: TextStyle(
      // fontFamily: ,
      fontSize: 12,
      fontWeight: .w600,
      overflow: .ellipsis,
    ),


  );
}

IconButtonThemeData iconButtonTheme(Color color){
  return IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(color),
      backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor)
    )
  );
}

OutlinedButtonThemeData outlinedButtonTheme(Color color) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(color: color)),
      foregroundColor: WidgetStatePropertyAll(color),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          // fontFamily: '',
          fontSize: 10,
          fontWeight: .w600,
        )
      ),

    )
  );
}

IconThemeData iconTheme(Color color){
  return IconThemeData(
    color: color,
    size: 25
  );
}
