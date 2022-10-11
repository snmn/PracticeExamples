import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
class Dashboard extends StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }

}
class DashboardState extends State<Dashboard>{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(onTap:() => Navigator.pop(context) ,
                      child: const Icon(Icons.backspace_outlined,)),
                ],
              ),
            ),
            Positioned(
              bottom: size.height/2,
              child: SizedBox(
               height: 60,
               child: ListView.builder(
                 primary: true,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemCount: 5,
                 itemBuilder: (context,position){
                 return const DemoItem();
               },),
           ),
            ),
            Positioned(
              bottom: 100,
              child: SizedBox(
                child: GridView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) => const DemoItem(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                  ),

                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                       Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: const [
                      Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;

          }),
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.people),
                title: const Text('Users'),
                activeColor: Colors.purpleAccent
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.message),
                title: const Text('Messages'),
                activeColor: Colors.pink
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Settings'),
                activeColor: Colors.blue
            ),
          ],
        )
    );
  }

}

class DemoItem extends StatelessWidget{
  const DemoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width/2.5,
      height: 60,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                  color: Colors.grey,
                    height: 40,width: 40,
                  ),
                const SizedBox(width: 8,),
                  const Text("test")
                ],
              )
            ],
          ),
        ),
      )
    );
  }

}