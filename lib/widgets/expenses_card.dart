import 'package:flutter_web/material.dart';

class ExpenseCard extends StatelessWidget {
  final String name;
  final String dates;

  const ExpenseCard({Key key, @required this.name, @required this.dates})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: Column(
        children: <Widget>[
          Text("Hello World"),
        ],
      ),
    );
  }
}
