import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SneakerX', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.primary)), 
      ),
    );
  }
} 