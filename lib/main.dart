import 'package:flutter/material.dart';
import 'package:nft_marketplace/screens/details_page.dart';
import 'package:nft_marketplace/screens/homepage.dart';
import 'package:nft_marketplace/screens/nft_provider_two.dart';
import 'package:nft_marketplace/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'nft_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NFTProvider()),
        ChangeNotifierProvider(create: (context) => NFTProviderTwo()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Marketplace',
      theme: ThemeData(
        scaffoldBackgroundColor: kDarkGrey,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: GetStarted(),
    );
  }
}
