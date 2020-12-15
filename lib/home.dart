import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            _userWidget(
                context: context,
                name: 'philbert',
                description: 'software devsss',
                phonenumber: 0785449932)
          ],
        ),
      ),
    );
  }

  Widget _userWidget(
      {BuildContext context,
      String name,
      String description,
      int phonenumber}) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(),
      child: Column(
        children: [
          Text(name),
          InkWell(
            onTap: () {
              print('you clicekd me');
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Home()));
            },
            child: Text(description),
          ),
          Text(phonenumber.toString()),
        ],
      ),
    );
  }
}
