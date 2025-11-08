import 'package:flutter/material.dart';
import 'package:kenzora/core/di/dependency_injection.dart';
import 'package:kenzora/core/routing/app_router.dart';
import 'package:kenzora/kenzora_app.dart';
void main() {
  setupGetIt();
  runApp(KenzoraApp(appRouter: AppRouter()));
}
