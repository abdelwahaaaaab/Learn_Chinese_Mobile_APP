import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import 'package:toku/components/item_category.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});
  final List <Number> numbers = [
    Number(color:const Color(0xFFF99531),sound: 'number_one_sound.mp3',image: 'assets/images/numbers/number_one.png', jpName: 'ichi', enName: 'One'),
    Number(color:const Color(0xFFF99531),sound: 'number_two_sound.mp3',image: 'assets/images/numbers/number_two.png', jpName: 'ni', enName: 'Two'),
    Number(color:const Color(0xFFF99531),sound: 'number_three_sound.mp3',image: 'assets/images/numbers/number_three.png', jpName: 'san', enName: 'Three'),
    Number(color:const Color(0xFFF99531),sound: 'number_four_sound.mp3',image: 'assets/images/numbers/number_four.png', jpName: 'shi ', enName: 'Four'),
    Number(color:const Color(0xFFF99531),sound: 'number_five_sound.mp3',image: 'assets/images/numbers/number_five.png', jpName: 'go', enName: 'Five'),
    Number(color:const Color(0xFFF99531),sound: 'number_six_sound.mp3',image: 'assets/images/numbers/number_six.png', jpName: 'roku', enName: 'Six'),
    Number(color:const Color(0xFFF99531),sound: 'number_seven_sound.mp3',image: 'assets/images/numbers/number_seven.png', jpName: 'shichi', enName: 'Seven'),
    Number(color:const Color(0xFFF99531),sound: 'number_eight_sound.mp3',image: 'assets/images/numbers/number_eight.png', jpName: 'hachi', enName: 'Eight'),
    Number(color:const Color(0xFFF99531),sound: 'number_nine_sound.mp3',image: 'assets/images/numbers/number_nine.png', jpName: 'ku ', enName: 'Nine'),
    Number(color:const Color(0xFFF99531),sound: 'number_ten_sound.mp3',image: 'assets/images/numbers/number_ten.png', jpName: 'jū ', enName: 'Ten'),
    ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Numbers'),
      backgroundColor:const Color(0xFF48332A),

      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index)
        {
          return NumberCategory(number: numbers[index], pathSound: 'numbers',);
        },  
      ),

    );
  }
}

// another solution using function and use it in listview instead of builder but builder is better.
List<NumberCategory> getnumber(List <Number> numbers)
{
  List<NumberCategory> items = [];
  for(int i = 0; i < numbers.length; i++)
  {
    items.add(NumberCategory(number: numbers[i], pathSound: 'numbers',),);
  }
  return items;
}