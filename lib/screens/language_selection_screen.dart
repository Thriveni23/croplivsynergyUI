import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'crop_recommendation_screen.dart';
final Map<String, String> languageNames = {
  'en': 'English',
  'hi': 'हिंदी',
  'ta': 'தமிழ்',
  'te': 'తెలుగు',
  'ml': 'മലയാളം',
  'kn': 'ಕನ್ನಡ',
  'gu': 'ગુજરાતી',
  'mr': 'मराठी',
  'bn': 'বাঙ্গালী',
  'as': 'অসমীয়া',
  'si': 'සිනහල',
  'ur': 'اردو'
};

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  Future<void> setLocale(Locale locale) async {
    var delegate = LocalizedApp.of(context).delegate;
    await delegate.changeLocale(locale);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              translate('label.choose_language'),
              style: const TextStyle(fontSize: 18),
            ),
            DropdownButton<String>(
              value: LocalizedApp.of(context).delegate.currentLocale.languageCode,
              onChanged: (String? newLanguage) async {
                await setLocale(Locale(newLanguage!));
              },
              items: ['en', 'hi', 'ta', 'te', 'ml', 'kn', 'gu', 'mr','bn','as','si','ur']
                  .map<DropdownMenuItem<String>>((String value) {
                    String displayName = languageNames[value] ?? value;
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(displayName),
                    );
                  }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CropRecommendationScreen()),
                );
              },
              child: Text(translate('button.continue')),
            ),
          ],
        ),
      ),
    );
  }
} 