import 'package:flutter/material.dart';
import 'package:minhavoz/Screens/Fala/components/background.dart';
import 'package:flutter_tts/flutter_tts.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController textEditingController = TextEditingController();

    // ignore: unused_element
    _speak(String text) async {
      await flutterTts.setLanguage('pt-PT');
      await flutterTts.setPitch(1);
      await flutterTts.setSpeechRate(0.50);
      await flutterTts.setVolume(1);
      await flutterTts.speak(text);
    }

    return Background(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(14)),
            Text(
              "Comunicação", 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Image.asset(
              "assets/images/chat.png",
              width: size.width * 0.8,
              height: size.height * 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Digite algo para falar',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ), 
                ),
                controller: textEditingController,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Falar', 
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                onPressed: () => _speak(textEditingController.text),
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15.5),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
