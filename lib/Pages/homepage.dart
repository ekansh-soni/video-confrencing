import 'package:flutter/material.dart';
import 'package:video_conf/utilities/appbar.dart';

import '../utilities/homepagebody.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: HomePageBody(),
    );
  }
}
