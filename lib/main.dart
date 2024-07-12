import 'package:flutter/material.dart';
import 'package:json_serializable_demo/models/user.model.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserScreen(),
    );
  }
}

class UserScreen extends StatelessWidget {
  final String jsonString = '''
  {
    "id": 1,
    "name": "John Doe",
    "email": "john.doe@example.com"
  }
  ''';

  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User.fromJson(json.decode(jsonString));

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${user.id}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Name: ${user.name}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Email: ${user.email}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
