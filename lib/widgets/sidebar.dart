import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';


class SideBar extends StatelessWidget {
  final String profileimage;
  const SideBar({ Key? key , required this.profileimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
          radius: 21,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(profileimage)
          ),
        ),
        const SizedBox(height: 3,),
        BorderedText(child: const Text('Follow'), strokeWidth: 3,)
          ],
        ),
        const SizedBox(height: 20,),       
        Column(
          children: [
             const Image(image: AssetImage('images/gift.png'), height: 50, width: 50,),
             BorderedText(child: const Text('1.2K'), strokeWidth: 3,),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children: [
             const Image(image: AssetImage('images/balloon.png'), height: 50, width: 40,),
             BorderedText(child: const Text('650'), strokeWidth: 2,),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children: [
          const CircleAvatar(
          radius: 22, 
          backgroundColor: Colors.white,
          child: CircleAvatar(
            child: Icon(Icons.star, size: 24,)),
        ),

        BorderedText(child:const Text('save'), strokeWidth: 2,),
          ],
        ),
      ],
    );
  }
}