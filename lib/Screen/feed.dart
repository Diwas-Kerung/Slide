import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sona/List/list.dart';
import 'package:sona/widgets/feed_description.dart';
import 'package:sona/widgets/sidebar.dart';


class Feed extends StatefulWidget {
  const Feed({ Key? key }) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  bool isTransparent = false;
  final create = create1;

  @override
  Widget build(BuildContext context) {
   
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
      )
    );
    return  Scaffold(
      
      body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: create.length,
      itemBuilder: (context, index){
      return Stack(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                isTransparent = !isTransparent;
              });
            },
            child: Image(fit: BoxFit.cover,image: AssetImage(create[index]['postimage']), height: double.infinity, width: double.infinity)),
          Positioned(
            bottom: 70,
            left: 10,
            child: Opacity(
              opacity: isTransparent ? 0 : 1,
              child: FeedDescription(id: create[index]['id'], description: create[index]['description']))),
          Positioned(
            bottom: 110,
            right: 10,
            child: Opacity(
              opacity: isTransparent ? 0 : 1,
              child: SideBar(profileimage: create[index]['profilepic']))),
        ],
      );
      }),
    );
  }
}