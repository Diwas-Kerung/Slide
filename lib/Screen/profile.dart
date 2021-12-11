import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sona/List/list.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final post = create1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            profile(),
            details(),
            myGridView(),
          ],
        ),
      ),
    );
  }

  Widget profile() => SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage(post[0]['profilepic']),
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${post[0]['name']}', style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('id: @${post[0]['id']}', style:const TextStyle(fontSize: 20),),
              Text('Bio: ${post[0]['bio']}',style:const TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    ),
  );

  Widget details() => SliverToBoxAdapter(
    child: Container(
      padding:const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                children: [
                  Text('Posts'),
                  Text(post.length.toString()),
                ],
              ),
              Column(
                children: const [
                  Text('Followers'),
                  Text('50.7K'),
                ],
              ),
              Column(
                children: const [
                  Text('Following'),
                  Text('22'),
                ],
              ),
              
              Column(
                children: const [
                  Text('Gifts'),
                  Text('678.4K'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30,),
          CupertinoButton(
            padding: EdgeInsets.all(0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
              child: Center(child: Text('Edit Profile', style: TextStyle(color: Colors.white)))),
            onPressed: (){},),
            const SizedBox(height: 30,)
        ],
      ),
    ),
  );

  Widget myGridView() => SliverToBoxAdapter(
        child: Expanded(
          child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: post.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisSpacing: 5,
               mainAxisSpacing: 5,
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.white,
              )
            ),
                  child: Image(image: AssetImage(post[index]['postimage'])));
              }),
        ),
      );
}