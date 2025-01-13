import 'package:books_app/books_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://hwgbakyykqiwulezxkqa.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh3Z2Jha3l5a3Fpd3VsZXp4a3FhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY2NDI5NDksImV4cCI6MjA1MjIxODk0OX0.jB_eXEgNbB8xPxdmN-MnGvP7RBNr2nqD1Hf4fnjvFYg',
    );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BooksPage(),
    );
  }
}