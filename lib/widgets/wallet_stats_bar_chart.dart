import 'package:flutter/material.dart';
import 'package:sample_finance_app_3/style.dart';
import 'package:sample_finance_app_3/models/bar_chart_data.dart';

class WalletStatsBarChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double height = 150;
    double width = size.width;

    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(20, 5, 20, 30),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 130),
          Row(
            children: <Widget>[
              Text("Outcome"),
              SizedBox(width: 40),
              Opacity(opacity: .4, child: Text("Income")),
            ],
          ),
          SizedBox(height: 10),
          BarChat(barChatData: barChatData, width: width, height: height),
        ],
      ),
    );
  }
}

class BarChat extends StatelessWidget {
  final List<BarData> barChatData;
  final double height;
  final double width;

  const BarChat({this.barChatData, this.height, this.width}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BarHeader(start: 0, end: 1000, step: 200, height: height),
          SizedBox(width: 15),
          for (BarData bData in this.barChatData)
            BarCol(data: bData, height: height * 1.2, width: width),
        ],
      ),
    );
  }
}

class BarHeader extends StatelessWidget {
  final double start;
  final double end;
  final double step;
  final double height;

  const BarHeader({this.start, this.end, this.step, this.height});

  @override
  Widget build(BuildContext context) {
    double marginTop = 20;
    double marginBottom = 25;
    double spacer =
        (height - marginTop - marginBottom) / (((end - start) / step) - 1);

    List<dynamic> markers = List<dynamic>();

    for (var i = end, val; i > start; i -= step, val = i.floor().toString()) {
      if (i >= 1000) {
        val = "${(i / 1000).floor()}k";
      }
      markers.add(val);
    }

    return Column(
      children: <Widget>[
        for (var mark in markers) _buildMark(mark, spacer),
      ],
    );
  }

  Widget _buildMark(String val, double spacer) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            val,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: spacer),
        ],
      ),
    );
  }
}

class BarCol extends StatelessWidget {
  final BarData data;
  final double width;
  final double height;

  const BarCol({this.data, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    var h = height - (height * (data.size / 100));

    return Column(
      children: <Widget>[
        Opacity(
          opacity: .18,
          child: BarFilled(text: data.label, size: h, color: Colors.grey),
        ),
        BarFilled(text: "${data.size}%", size: height - h, color: themeColor),
      ],
    );
  }
}

class BarFilled extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextDirection direction;

  const BarFilled({this.text, this.size, this.color, this.direction}) : super();

  @override
  Widget build(BuildContext context) {
    print("BoxFilled: size($size), text($text)");

    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            color: color,
            child: SizedBox(height: size, width: 52),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
