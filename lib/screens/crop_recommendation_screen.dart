import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class CropRecommendationScreen extends StatefulWidget {
  @override
  _CropRecommendationScreenState createState() => _CropRecommendationScreenState();
}

class _CropRecommendationScreenState extends State<CropRecommendationScreen> {
  final _nitrogenController = TextEditingController();
  final _potassiumController = TextEditingController();
  final _phosphorusController = TextEditingController();
  final _temperatureController = TextEditingController();
  final _humidityController = TextEditingController();
  final _pHController = TextEditingController();
  final _rainfallController = TextEditingController();

  @override
  void dispose() {
    _nitrogenController.dispose();
    _potassiumController.dispose();
    _phosphorusController.dispose();
    _temperatureController.dispose();
    _humidityController.dispose();
    _pHController.dispose();
    _rainfallController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('title.crop_recommendation')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _nitrogenController,
                decoration: InputDecoration(labelText: translate('label.nitrogen')),
              ),
              TextFormField(
                controller: _potassiumController,
                decoration: InputDecoration(labelText: translate('label.potassium')),
              ),
              TextFormField(
                controller: _phosphorusController,
                decoration: InputDecoration(labelText: translate('label.phosphorus')),
              ),
              TextFormField(
                controller: _temperatureController,
                decoration: InputDecoration(labelText: translate('label.temperature')),
              ),
              TextFormField(
                controller: _humidityController,
                decoration: InputDecoration(labelText: translate('label.humidity')),
              ),
              TextFormField(
                controller: _pHController,
                decoration: InputDecoration(labelText: translate('label.ph')),
              ),
              TextFormField(
                controller: _rainfallController,
                decoration: InputDecoration(labelText: translate('label.rainfall')),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(translate('message.predicting_crop'));
                },
                child: Text(translate('button.predict_crop')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
