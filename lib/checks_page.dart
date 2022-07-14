import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/credit_info_page.dart';
import 'package:nateghi/rnd.dart';

class ChecksPage extends StatelessWidget {
  const ChecksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl<int>(
          // backgroundColor: CupertinoColors.systemGrey2,
          // thumbColor: CupertinoColors.activeGreen,
          // This represents the currently selected segmented control.
          // groupValue: _selectedSegment,
          // Callback that sets the selected segmented control.
          onValueChanged: (int? value) {},
          children: const <int, Widget>{
            1: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'همه',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            2: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'برداشت نشده',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          },
        ),
      ),
      child: ListView.separated(
        itemCount: 6,
        separatorBuilder: (context, index) => const Divider(height: 2),
        itemBuilder: (context, index) => index == 0
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoSearchTextField(
                  onChanged: (String value) {},
                  onSubmitted: (String value) {},
                ),
              )
            : GestureDetector(
                child: const ListItem(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const CreditInfoPage()),
                ),
              ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Random().nextBool() ? CupertinoColors.systemGreen.withAlpha(128) : null,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Text(Rnd().name),
                  const SizedBox(width: 4),
                  Text('(کالای برق سینا)', style: Theme.of(context).textTheme.caption),
                  // const Spacer(),
                  // const Icon(Icons.done, color: CupertinoColors.systemGreen),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('۰۰۵۲/۰۰۱۰۸۶ - ۱۴۰۱/۰۴/۳۰', style: Theme.of(context).textTheme.caption),
                  const Text('۲۰۰,۰۰۰,۰۰۰ ریال'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
