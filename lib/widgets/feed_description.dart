
import 'package:flutter/material.dart';
class FeedDescription extends StatelessWidget {
  final String id;
  final String description;
  
  const FeedDescription({ Key? key, required this.id, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('@$id', style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
         Text(description),
        ],
      ),
    );
  }
}