import 'package:flutter_web/material.dart';
import 'package:sample_finance_app_3/style.dart';

class WalletStatsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      height: height * walletStatsHeaderHeightRatio,
      decoration: BoxDecoration(
        color: themeColor,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 25, 15, 30),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Phaethon Hao's",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Wallet",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: ButtonTheme(
                minWidth: 0,
                child: FlatButton(
                  padding: const EdgeInsets.fromLTRB(0, 16, 4, 0),
                  onPressed: () => null,
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
