import 'package:flutter/material.dart';

class ListViewScreen1 extends StatelessWidget {
  const ListViewScreen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: MyStatefulWidget()
                    ),
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
    return Expanded(
      child: Column(
        children: [
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 19,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                  selected: index == _selectedIndex,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }
                );
              }
          ),
        ],
      ),
    );
  }
}






