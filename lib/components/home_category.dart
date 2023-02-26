import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key,this.name, this.color, this.onTap});
  final String? name;
  final Color? color;
  final Function()? onTap; // == voidCallback
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                  height: 70,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding:const EdgeInsets.only(left: 20),
                  color:color,
                  child: Text(name!,
                    style:const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
    );
  }
}