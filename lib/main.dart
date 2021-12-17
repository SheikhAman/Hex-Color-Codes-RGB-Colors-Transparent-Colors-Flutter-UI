import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Color.fromRGBO(232, 26, 232, 1).toHex());
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 160,
            color: Color(0xFF08c79e).withOpacity(
                0.3), // here FF is used for 100% opacity you can also use dot_with_opacity and give value
          ),
          Container(
            height: 160,
            color: HexColor.fromHex('#FF1a64c4'),

            /// hexcolor converting into color String using function
          ),
          Container(
            height: 160,
            color: Color.fromRGBO(232, 26, 232, 1).withOpacity(
                0.3), // Rgb color here last value O is used for opacity
          ),
          Container(
            color: Colors.teal,
            height: 160,
          ),
          Container(
            color: Colors.grey,
            height: 160,
          ),
        ],
      ),
    );
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length <= 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
