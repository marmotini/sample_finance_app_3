import 'package:flutter/material.dart';
import 'package:sample_finance_app_3/widgets/wallet_stats_header.dart';
import 'package:sample_finance_app_3/widgets/wallet_stats_card_details.dart';
import 'package:sample_finance_app_3/widgets/wallet_stats_bar_chart.dart';

class WalletStatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                WalletStatsHeader(),
                Expanded(
                  child: WalletStatsBarChat(),
                ),
              ],
            ),
          ),
          WalletStatsCardDetails(),
        ],
      ),
    );
  }
}
