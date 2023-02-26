import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberCategory extends StatelessWidget {
  final Number number;
  final String pathSound;
  const NumberCategory({super.key, required this.number, required this.pathSound});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color:number.color,
            child: Row(
              children: [
                Container(
                  color:const Color(0xFFFFF4DB),
                  child: Image.asset(number.image!)
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(number.jpName,
                        style:const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(number.enName,
                        style:const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(flex: 1,),
                IconButton(
                  onPressed: ()
                  {
                    //final player = AudioCache(prefix: 'assets/sounds/numbers/');
                    AudioCache player = AudioCache(prefix: 'assets/sounds/$pathSound/');
                    player.play(number.sound);
                  },
                  icon:const Icon(Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                ),
              )
                
              ],
            ),
          );
  }
}
class PhraseCategory extends StatelessWidget {
  final Number phrase;
  const PhraseCategory({super.key, required this.phrase});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color:phrase.color,
        child:Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(phrase.jpName,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(phrase.enName,
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
                          ],
            
                        ),
            ),
        const Spacer(flex: 1,),
        IconButton(
          onPressed: (){
            AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');
            player.play(phrase.sound);
          },
          icon:const Icon(Icons.play_arrow),
          color: Colors.white,
          iconSize: 30,
          )
      ]
        ) 
        
      );
  }
}