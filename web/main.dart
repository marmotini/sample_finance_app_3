import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:sample_finance_app_3/main.dart' as app;

main() async {
  await ui.webOnlyInitializePlatform();
  app.main();
}
