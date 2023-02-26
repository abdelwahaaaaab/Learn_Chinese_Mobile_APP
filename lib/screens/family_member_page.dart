import 'package:flutter/material.dart';
import 'package:toku/components/item_category.dart';
import 'package:toku/models/number_model.dart';

class FamilyMember extends StatelessWidget {
  final List <Number> family = [
    Number(color: const Color(0xFF4F7B30), sound: 'daughter.wav', image: 'assets/images/family_members/family_daughter.png', jpName: 'ojousan', enName: 'Daughter'),
    Number(color: const Color(0xFF4F7B30), sound: 'father.wav', image: 'assets/images/family_members/family_father.png', jpName: 'otosan', enName: 'Father'),
    Number(color: const Color(0xFF4F7B30), sound: 'grand father.wav', image: 'assets/images/family_members/family_grandfather.png', jpName: 'ojiisan', enName: 'Grandfather'),
    Number(color: const Color(0xFF4F7B30), sound: 'grand mother.wav', image: 'assets/images/family_members/family_grandmother.png', jpName: 'obaasan', enName: 'Grandmohter'),
    Number(color: const Color(0xFF4F7B30), sound: 'mother.wav', image: 'assets/images/family_members/family_mother.png', jpName: 'okāsan', enName: 'Mother'),
    Number(color: const Color(0xFF4F7B30), sound: 'older bother.wav', image: 'assets/images/family_members/family_older_brother.png', jpName: 'oniisan', enName: 'Older Brother'),
    Number(color: const Color(0xFF4F7B30), sound: 'older sister.wav', image: 'assets/images/family_members/family_older_sister.png', jpName: 'oneesan', enName: 'Older Sister'),
    Number(color: const Color(0xFF4F7B30), sound: 'son.wav', image: 'assets/images/family_members/family_son.png', jpName: 'musukosan', enName: 'Son'),
    Number(color: const Color(0xFF4F7B30), sound: 'younger brohter.wav', image: 'assets/images/family_members/family_younger_brother.png', jpName: 'otoutosan', enName: 'Younger Brother'),
    Number(color: const Color(0xFF4F7B30), sound: 'younger sister.wav', image: 'assets/images/family_members/family_younger_sister.png', jpName: 'imoutosan', enName: 'Younger Sister'),
  ];
  FamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Family Members'),
        backgroundColor:const Color(0xFF48332A),
        ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index)
      {
        return NumberCategory(number: family[index], pathSound: 'family_members');
      }
      ),
    );
  }
}