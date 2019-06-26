import 'package:flutter/material.dart';
import 'package:sample_finance_app_3/style.dart';

class WalletStatsCardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Positioned(
      top: height * walletStatsCardTopRatio,
      width: width * walletStatsCardWidthRatio,
      left: width * walletStatsCardLeftRatio,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.fromLTRB(42, 30, 42, 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Saldo",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 18),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: SizedBox(
                      width: 40,
                      height: 24,
                      child: RaisedButton(
                        disabledColor: themeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.fromLTRB(8, 7, 8, 7),
                        child: Text(
                          'USD',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "7,937,652.00",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Card no.",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "****  ****  ****  4567",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "09/19",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    color: Colors.black,
                    width: 35,
                    height: 20,
                    alignment: Alignment.center,
                    child: Text(
                      "VISA",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32),
              Row(children: <Widget>[
                Text(
                  "Total Expenses",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Container(
                    padding: EdgeInsets.fromLTRB(11, 8, 18, 8),
                    decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: <Widget>[
                        IconTheme(
                          data: IconThemeData(
                            color: Colors.white,
                          ),
                          child: Icon(Icons.arrow_drop_down),
                        ),
                        SizedBox(width: 3),
                        Text(
                          '\$ 2,325.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
