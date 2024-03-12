import 'package:deyarakapp/core/utils/router.dart';
import 'package:deyarakapp/theme/themeprovider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => ThemeProvide(), child: const DeyarakApp()),
  );
}

class DeyarakApp extends StatelessWidget {
  const DeyarakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvide>(context).themedata,
    );
  }
}
