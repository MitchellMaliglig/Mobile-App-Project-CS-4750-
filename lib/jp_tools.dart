import 'package:flutter_tts/flutter_tts.dart';
import 'package:kana_kit/kana_kit.dart';
import 'package:translator/translator.dart';

final kana = KanaKit();
final translator = GoogleTranslator();
FlutterTts tts = FlutterTts();

Future speak(String str) async{
  await tts.setLanguage("ja-JP");
  await tts.setPitch(1);
  await tts.setSpeechRate(.5);
  await tts.speak(str);
}

Future toEng(String str) async{
  var translation =  await translator.translate(str, from: 'ja', to: 'en');
  return translation;
}