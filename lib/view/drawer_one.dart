import 'package:flutter/material.dart';

import '../utils/iconlist.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff121315),
          drawer: Container(
            height: height,
            width: width*0.7,
            decoration: BoxDecoration(
              color: Color(0xff2e2f32),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0,top: 15.0,bottom: 8.0),
                    child: Text('Gmail',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
                  ),
                  Divider(
                    height: height*0.01,
                    color:  Color(0xff4f5054),
                  ),
                  ListTile(
                    leading: Icon(Icons.all_inbox,color: Colors.white,),
                    title: Text('All Inboxes',style: TextStyle(color: Colors.white),),
                  ),
                  Divider(
                    height: height*0.01,
                    color:  Color(0xff4f5054),
                  ),
                  ListTile(
                    leading: Icon(Icons.inbox,color: Colors.white,),
                    title: Text('Inbox',style: TextStyle(color: Colors.white),),
                  ),
                  Divider(
                    height: height*0.01,
                    color:  Color(0xff4f5054),
                  ),
                  ...List.generate(l1.length, (index) => box(icon: l1[index]['icon'], name: l1[index]['name'])),
                  Divider(
                    height: height*0.01,
                    color:  Color(0xff4f5054),
                  ),
                  ListTile(
                    leading: Icon(Icons.add,color: Colors.white,),
                    title: Text('Create new',style: TextStyle(color: Colors.white),),
                  ),
                  Divider(
                    height: height*0.01,
                    color:  Color(0xff4f5054),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_sharp,color: Colors.white,),
                    title: Text('Settings',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: const Color(0xff0d0d0f),
          ),
        ),
      ),
    );
  }
}
Widget box({required IconData icon,required String? name})
{
  return ListTile(
    leading: Icon(icon,color: Colors.white,),
    title: Text(name!,style: TextStyle(color: Colors.white),),
  );
}