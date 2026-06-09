import 'package:flutter/material.dart';
//import '../../../../core/theme/app_colors.dart';
import 'package:sneakerx/core/theme/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SneakerX', style: AppTextStyles.heading1,), 
      ),
    );
  }
} 