class BarData {
  final int size;
  final String label;

  const BarData(this.size, this.label);
}

var barChatData = <BarData>[
  BarData(5, 'Others'),
  BarData(25, 'Withdrawals'),
  BarData(10, 'Subscription'),
  BarData(45, 'Transfers'),
  BarData(45, 'Profits'),
];