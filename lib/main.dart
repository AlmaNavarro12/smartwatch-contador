import 'package:flutter/material.dart';
import 'package:smartwatch/count/counter_page.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      child: const CounterPage(),
      builder: (context, mode, child){
        return MaterialApp(
          // title: 'Flutter Demo',
          theme: ThemeData(
            visualDensity: VisualDensity.compact,
            useMaterial3: true,
            colorScheme: mode == WearMode.active 
              ? const ColorScheme.dark(
                  primary: Color(0xFF00B5FF)
                )
              : const ColorScheme.dark(
                  primary: Colors.white24,
                  onBackground: Colors.white10,
                  onSurface: Colors.white10,
                ),
          ),
          home: child,
        );
      }
    );
  }
}
