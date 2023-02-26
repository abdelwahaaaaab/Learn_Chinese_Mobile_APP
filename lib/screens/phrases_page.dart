import 'package:flutter/material.dart';
import 'package:toku/components/item_category.dart';
import '../models/number_model.dart';

class PhrasesPage extends StatelessWidget {
 final List<Number> phrases = [
    Number(color:const Color(0xFF439DC1), sound: 'are_you_coming.wav',  jpName: 'Kite imasu ka', enName: 'Are You Coming'),
    Number(color:const Color(0xFF439DC1), sound: 'dont_forget_to_subscribe.wav',  jpName: 'Kōdoku suru koto o wasurenaide', enName: "Don't Forget to Subscribe"),
    Number(color:const Color(0xFF439DC1), sound: 'how_are_you_feeling.wav',  jpName: 'Go kibun wa ikagadesu ka', enName: 'How Are You Feeling'),
    Number(color:const Color(0xFF439DC1), sound: 'i_love_anime.wav',  jpName: 'Watashi wa anime ga daisukidesu', enName: 'I Love Anime'),
    Number(color:const Color(0xFF439DC1), sound: 'i_love_programming.wav',  jpName: 'Puroguramingu ga daisuki', enName: 'I Love Programming'),
    Number(color:const Color(0xFF439DC1), sound: 'programming_is_easy.wav',  jpName: 'Puroguramingu wa kantan', enName: 'Programming Is Easy'),
    Number(color:const Color(0xFF439DC1), sound: 'what_is_your_name.wav',  jpName: 'Namae wa nandesu ka', enName: 'What Is Your Name'),
    Number(color:const Color(0xFF439DC1), sound: 'where_are_you_going.wav',  jpName: 'Doko ni iku no', enName: 'Where Are You Going'),
    Number(color:const Color(0xFF439DC1), sound: 'yes_im_coming.wav',  jpName: 'Hai, watashi wa kite imasu', enName: "Yes, I'm Coming"),
  ];
  PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Phrases'
        ),
        backgroundColor:const Color(0xFF48332A),
      ),
      body: ListView.builder(
      itemCount: phrases.length,
      itemBuilder:(context, index)
      {
        return PhraseCategory(phrase: phrases[index]);
      }, ),
    );  
  }
}