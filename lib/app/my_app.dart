import 'package:elevate_task/dependancy_imjection/dependancy_injection.dart';
import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/products/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        child: ChangeNotifierProvider(
          create: (_) => serviceLocator<ProductProvider>(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ProductsScreen(),
          ),
        ));
  }
}
