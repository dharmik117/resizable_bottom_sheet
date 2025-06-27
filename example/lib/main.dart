import 'package:flutter/material.dart';
import 'package:resizeable_bottom_sheet/resizeable_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resizeable Bottom Sheet Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showResizableBottomSheet(
              context: context,
              elevation: 20,
              enableDrag: false,
              child: Column(
                children: [
                  TextFormField(),
                  SizedBox(height: 30),
                  ElevatedButton(onPressed: () {}, child: Text('Submit')),
                ],
              ),
            );
          },
          child: Text('Open'),
        ),
      ),
    );
  }
}
