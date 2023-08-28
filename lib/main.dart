import 'package:flutter/material.dart';
import 'package:povider_counter/home_page.dart';
import 'package:povider_counter/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderCounter());
}

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CounterProvider(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
