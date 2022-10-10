import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }

}
class DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(onTap:() => Navigator.pop(context) ,
                    child: const Icon(Icons.backspace_outlined,)),
              ],
            ),
           SizedBox(
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
            SizedBox(
              child: GridView.builder(
                itemCount: 100,
                itemBuilder: (context, index) => const DemoItem(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                ),
              ),
            )

          ],
        ),
      ),
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