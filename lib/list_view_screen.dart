import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SimpleListBuilder()
          //SimpleList()
          //MyStatefullWidget()

      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem ({Key? key, required this.number} ) : super (key: key);

final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all()
      ),
      child: Text("Элемент # $number"),
    );
  }
}

/*class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        MyListItem(number: 1),
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        //MyListItem(number: 11),
        //MyListItem(number: 12),
        //MyListItem(number: 13),
        //MyListItem(number: 14),
        //MyListItem(number: 15),
        //MyListItem(number: 16),
      ],
    );
  }
}*/

class SimpleListBuilder extends StatelessWidget {
  SimpleListBuilder({Key? key}) : super(key: key);
 // var list = List<int>.generate((50), (i) => i + 1);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return MyListItem(number: index);
        }
    );
  }
}






/*class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        MyListItem(number: 1),
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        MyListItem(number: 11),
        MyListItem(number: 12),
        MyListItem(number: 13),
        MyListItem(number: 14),
        MyListItem(number: 15),
        MyListItem(number: 16),
      ],*/
      /*children: const <Widget> [
        ListTitle(
          leading: Icon(Icons.map),
          title: Text ('map')
        ),
      ListTitle(
          leading: Icon(Icons.phone),
          title: Text ('Phone')
      ),
      ]*/
    //);
 // }
//}
