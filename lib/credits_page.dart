import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/add_credit_page.dart';
import 'package:nateghi/credit_info_page.dart';
import 'package:nateghi/rnd.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.of(context).push(
            CupertinoPageRoute(builder: (context) => const AddCreditPage()),
          ),
          child: const Icon(CupertinoIcons.add),
        ),
        middle: const Text('لیست اعتبارات'),
        trailing: const Icon(CupertinoIcons.info),
      ),
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(height: 16),
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text(Rnd().title)),
                const Text('۲۸۰,۰۰۰,۰۰۰ ریال'),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('۰۱/۷۷۴۷/۴۸/۱۹۵۹ - ۱۴۰۱/۰۴/۲۸', style: Theme.of(context).textTheme.caption),
                Text('کل: ۴۰۰,۰۰۰,۰۰۰', style: Theme.of(context).textTheme.caption),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
