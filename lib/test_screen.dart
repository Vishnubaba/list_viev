import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  const ListViewScreen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: MyStatefulWidget()
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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text ('Phone  Item $index'),
                    //title: Text('Item $index'),
                    selected: index == _selectedIndex,
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }
                );
              }
          );
  }
}





