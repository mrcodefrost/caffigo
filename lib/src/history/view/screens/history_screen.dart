import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.myOrder),
      body: Center(
        child: Text('History Screen'),
      ),
    );
  }
}
