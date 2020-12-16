import 'package:flutter/material.dart';
import 'package:minhavoz/Screens/Fala/fala_screen.dart';
import 'package:minhavoz/Screens/Perfil/perfil_screen.dart';
import 'package:minhavoz/Screens/Welcome/components/background.dart';
import 'package:minhavoz/components/rounded_button.dart';
import 'package:minhavoz/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bem-vindo à minha Voz, Telmo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/welcome.png",
              width: size.width * 0.8,
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Fala",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FalaScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Perfil",
              color: primaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PerfilScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
