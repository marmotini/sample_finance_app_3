import 'package:flutter_web/material.dart';
import 'package:sample_finance_app_3/stats_screen.dart';
import 'package:sample_finance_app_3/wallet_stats_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Application 3',
      routes: {
//        '/': (context) => ActivityScreen(),
        '/': (context) => WalletStatsScreen(),
        '/stats': (context) => StatsScreen(),
//        '/wallet': (context) => WalletStatsScreen(),
      },
    );
  }
}
