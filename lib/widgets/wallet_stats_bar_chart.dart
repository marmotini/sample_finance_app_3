import 'package:flutter/material.dart';
import 'package:sample_finance_app_3/style.dart';
import 'package:sample_finance_app_3/models/bar_chart_data.dart';

class WalletStatsBarChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(20, 5, 20, 30),
      decoration: BoxDecoration(
        color: Colors.white12,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 130),
          Row(
            children: <Widget>[
              Text("Outcome"),
              SizedBox(width: 40),
              Opacity(
                opacity: .4,
                child: Text(
                  "Income",
                ),
              ),
            ],
          ),
          BarChat(barChatData),
        ],
      ),
    );
  }
}

class BarChat extends StatelessWidget {
  final List<BarData> barChatData;

  const BarChat(this.barChatData) : super();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    print("BarChat Height:$height, Width: $width");

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BarHeader(start: 0, end: 1000, spacer: 200),
          for (BarData bData in this.barChatData) BarCol(data: bData),
        ],
      ),
    );
  }
}

class BarHeader extends StatelessWidget {
  final double start;
  final double end;
  final double spacer;

  const BarHeader({this.start, this.end, this.spacer});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    print("BarHeader Height:$height, Width: $width");

    return Spacer();
  }
}

class BarCol extends StatelessWidget {
  final BarData data;
  final double maxWidth;
  final double maxHeight;

  const BarCol({this.data, this.maxHeight, this.maxWidth});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    print("BarCol Height:$height, Width: $width");

    return SizedBox();
  }
}
