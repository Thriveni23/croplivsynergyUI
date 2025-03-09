import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CropRecommendationUI extends StatefulWidget {
  @override
  _CropRecommendationUIState createState() => _CropRecommendationUIState();
}

class _CropRecommendationUIState extends State<CropRecommendationUI> {
  final _nitrogenController = TextEditingController();
  final _potassiumController = TextEditingController();
  final _phosphorusController = TextEditingController();
  final _temperatureController = TextEditingController();
  final _humidityController = TextEditingController();
  final _pHController = TextEditingController();
  final _rainfallController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Recommendation System'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              // Input fields...
                    TextFormField(
                controller: _nitrogenController,
                decoration: InputDecoration(labelText: 'Nitrogen'),
              ),

              // Potassium input field
              TextFormField(
                controller: _potassiumController,
                decoration: InputDecoration(labelText: 'Potassium'),
              ),

              // Phosphorus input field
              TextFormField(
                controller: _phosphorusController,
                decoration: InputDecoration(labelText: 'Phosphorus'),
              ),

                 TextFormField(
                controller: _temperatureController,
                decoration: InputDecoration(labelText: 'Temperature'),
              ),

              // Humidity input field
              TextFormField(
                controller: _humidityController,
                decoration: InputDecoration(labelText: 'Humidity'),
              ),

              // pH input field
              TextFormField(
                controller: _pHController,
                decoration: InputDecoration(labelText: 'pH'),
              ),

              // Rainfall input field
              TextFormField(
                controller: _rainfallController,
                decoration: InputDecoration(labelText: 'Rainfall'),
              ),
              SizedBox(height: 20),

              // Prediction Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement prediction logic here
                  print('Prediction button pressed');
                },
                child: Text('Predict Crop '),
              ),

              SizedBox(height:20),
              ElevatedButton(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LivestockInvestmentUI()),
                  );
                },
                child: Text('Next '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LivestockInvestmentUI extends StatefulWidget {
  @override
  _LivestockInvestmentUIState createState() => _LivestockInvestmentUIState();
}

class _LivestockInvestmentUIState extends State<LivestockInvestmentUI> {
  final _investmentController = TextEditingController();
  final _landSizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livestock Investment Predictor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _investmentController,
                decoration: InputDecoration(labelText: 'Livestock Investment Amount'),
                keyboardType: TextInputType.number,
              ),

              TextFormField(
                controller: _landSizeController,
                decoration: InputDecoration(labelText: 'Land Holding Size (acres)'),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // TODO: Implement prediction logic here
                  print('Prediction button pressed for livestock investment');
                },
                child: Text('Predict Best Livestock '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}