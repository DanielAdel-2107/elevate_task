import 'package:elevate_task/app/my_app.dart';
import 'package:elevate_task/dependancy_imjection/dependancy_injection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  setupServiceLocator();
}
