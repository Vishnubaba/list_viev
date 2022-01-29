import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'test_screen.dart';

//import 'list_view_screen.dart';

import 'list_view_screen_v2.dart';

void main() {

  runApp( const ListViewScreen2());


}











































//void main()=>runApp(const MaterialApp(
// home: AppHome(),
// ));

/*class AppHome extends StatefulWidget{
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() {
    return AppState();
  }
}

class AppState extends State<AppHome>{
  List<String> names = [
    'Abhishek','John','Robert','Shyam', 'Sita','Gita','Nitesh','Миша','Лёша','Катя','Виталик','Федя','Анджела','Элвис','Снежана'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List App"),
      ),
      body: ListView.builder(
        reverse: false,
        itemBuilder: (_,int index)=>EachList(names[index]),
        itemCount: names.length,
      ),
    );
  }
}
class EachList extends StatelessWidget{
  final String name;
  const EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child:  Container(
        padding: const EdgeInsets.all(8.0),
        child:  Row(
          children: <Widget>[
             CircleAvatar(child:  Text(name[0]),),
             const Padding(padding: EdgeInsets.only(right: 10.0)),
             Text(name,style: const TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

}*/
