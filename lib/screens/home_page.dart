import 'package:flutter/material.dart';
import 'package:toku/components/home_category.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_member_page.dart';
import 'package:toku/screens/number_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color(0xFFFFF4D9),
        appBar: AppBar(
          title:const Text('Toku',),
          backgroundColor:const Color(0xFF48332A),
          ),
          body: Column(
            children: [
              HomeCategory(
              name: 'Numbers',
               color: const Color(0xFFF99531),
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (BuildContext context)
                 {
                   return NumberPage();
                 }
                 )
                 );
              }),
              HomeCategory(
                name: 'Family Members',
                color:const Color(0xFF4F7B30),
                onTap: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context)
                     {
                      return FamilyMember();
                     }
                     )
                     );
                },
                ),
              HomeCategory(
                name: 'Colors',
                color:const Color(0xFF7B3F9F),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    {
                      return ColorPage();
                    })
                    );
                }, 
                 ),
              HomeCategory(
                name: 'Phrases',
                color: const Color(0xFF439DC1),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    {
                      return PhrasesPage();
                    }
                    )
                    );
                },
                ),
            ],
          ),
      );
  }
}