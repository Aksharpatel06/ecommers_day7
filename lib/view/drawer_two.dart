import 'package:flutter/material.dart';

import '../utils/iconlist.dart';

class drawer2 extends StatefulWidget {
  const drawer2({super.key});

  @override
  State<drawer2> createState() => _drawer2State();
}

class _drawer2State extends State<drawer2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: height * 0.25,
                  color: Color(0xffB495E6),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(100)),
                              child: const CircleAvatar(
                                radius: 14,
                                backgroundImage:
                                    AssetImage('asset/image/1.jpg'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(100)),
                              child: const CircleAvatar(
                                radius: 14,
                                backgroundImage:
                                    AssetImage('asset/image/2.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('asset/image/3.jpg'),
                      ),
                      Text('John due', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                      Text('john@email.com', style: TextStyle(color: Color(0xff7166a2) ,fontSize: 12, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(l2.length, (index) => addItemBox(icon: l2[index]['icon'], name: l2[index]['name'])),
                    ],
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: const Color(0xff2f2f2f),
            centerTitle: true,
            title: Text(
              'Drawer App',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
Widget addItemBox({required IconData icon, required String name}){

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
    child: SizedBox(
      width:190,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Icon(icon, size: 25, color: Colors.grey,),
          ),
          Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
        ],
      ),
    ),
  );

}
