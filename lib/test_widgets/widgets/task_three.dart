import 'package:flutter/material.dart';



class TaskThree extends StatelessWidget {
  const TaskThree({super.key, required this.isBuilder});
  final bool isBuilder;

  @override
  Widget build(BuildContext context) {
    return isBuilder?
    ListView.builder(
        itemCount: 18,
        itemBuilder: (BuildContext context , int index){
          return Padding(
              padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: index, color: Colors.primaries[index]));
        }
    )
        :
    ListView(
      children: [
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),
        Padding(
            padding: EdgeInsetsGeometry.all(16)  ,child: CustomListContainer(index: 1, color: Colors.primaries[1])
        ),

      ],
    );
  }
}


class CustomListContainer extends StatelessWidget {
  const CustomListContainer({super.key , required this.index, required this.color});
  final int index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: color,
      ),
      child: Row(
        children: [
          SizedBox(width: 16,),
          Icon(Icons.star , color: Colors.white,),
          SizedBox(width: 16,),
          Text("Item $index" , style: TextStyle(color: Colors.white , fontSize: 16),),
        ],
      ),
    );
  }
}
