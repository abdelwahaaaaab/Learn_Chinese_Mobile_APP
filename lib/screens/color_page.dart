import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import 'package:toku/components/item_category.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  final List <Number> colors = [
    Number(color:const Color(0xFF7B3F9F),sound: 'black.wav',image: 'assets/images/colors/color_black.png', jpName: 'Kuroi', enName: 'Black'),
    Number(color:const Color(0xFF7B3F9F),sound: 'brown.wav',image: 'assets/images/colors/color_brown.png', jpName: 'Chairo', enName: 'Brown'),
    Number(color:const Color(0xFF7B3F9F),sound: 'dusty yellow.wav',image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Hokori ppoi kiiro', enName: 'Dusty Yellow'),
    Number(color:const Color(0xFF7B3F9F),sound: 'gray.wav',image: 'assets/images/colors/color_gray.png', jpName: 'Haiiro ', enName: 'Gray'),
    Number(color:const Color(0xFF7B3F9F),sound: 'green.wav',image: 'assets/images/colors/color_green.png', jpName: 'Midori', enName: 'Green'),
    Number(color:const Color(0xFF7B3F9F),sound: 'red.wav',image: 'assets/images/colors/color_red.png', jpName: 'Aka', enName: 'Red'),
    Number(color:const Color(0xFF7B3F9F),sound: 'white.wav',image: 'assets/images/colors/color_white.png', jpName: 'Shiro', enName: 'White'),
    Number(color:const Color(0xFF7B3F9F),sound: 'yellow.wav',image: 'assets/images/colors/yellow.png', jpName: 'Kiiro', enName: 'Yellow'),
    ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Colors'),
      backgroundColor:const Color(0xFF48332A),

      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index)
        {
          return NumberCategory(number: colors[index], pathSound: 'colors',);
        },  
      ),

    );
  }
}

