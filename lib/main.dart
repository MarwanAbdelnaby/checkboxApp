import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, bool> filters = {
    'Work files': false,
    'Personal': false,
    'Projects': false,
    'Priority': false,
    'Reminders': false,
    'Events': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Filters with checkbox'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: filters.keys.map((key) {
            return CheckboxListTile(
              title: Text(key),
              value: filters[key],
              onChanged: (bool? value) {
                setState(() {
                  filters[key] = value ?? false;

                  
                });
                print('Selected Filters: ${filters.entries.where((entry) => entry.value).map((entry) => entry.key).toList()}');
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
