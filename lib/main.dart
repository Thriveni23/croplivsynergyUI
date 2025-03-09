import 'package:flutter/material.dart';

import 'crop_livestock_recommendation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CropRecommendationUI(),
    );
  }
}