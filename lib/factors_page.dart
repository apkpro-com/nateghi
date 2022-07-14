import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/credit_info_page.dart';
import 'package:nateghi/rnd.dart';

class FactorsPage extends StatelessWidget {
  const FactorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (context, index) => const Divider(height: 16),
      itemBuilder: (context, index) => index == 0
          ? const CreditCardWidget()
          : index == 1
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
            Text(Rnd().factorTitle),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.person_alt,
                  size: 16,
                  color: CupertinoColors.inactiveGray,
                ),
                const SizedBox(width: 4),
                Text(Rnd().name),
                const SizedBox(width: 4),
                Text('(کالای برق سنا)', style: Theme.of(context).textTheme.caption),
              ],
            ),
            const SizedBox(height: 8),
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
    );
  }
}
