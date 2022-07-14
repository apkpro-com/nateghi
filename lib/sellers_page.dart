import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/credit_info_page.dart';
import 'package:nateghi/rnd.dart';

class SellersPage extends StatelessWidget {
  const SellersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.add),
        middle: Text('لیست فروشندگان'),
      ),
      child: ListView.separated(
        itemCount: 6,
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(Rnd().name),
                const SizedBox(width: 4),
                // Text('(۰۸۸۰۱۱۲۲۰۳)', style: Theme.of(context).textTheme.caption),
                Text('(کالای برق سینا)', style: Theme.of(context).textTheme.caption),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.person_alt,
                  size: 16,
                  color: CupertinoColors.inactiveGray,
                ),
                Text('۰۸۸۰۱۱۲۲۰۳', style: Theme.of(context).textTheme.caption),
                const Spacer(),
                Text('۰۹۱۲۳۴۵۶۷۸۹', style: Theme.of(context).textTheme.caption),
                const Icon(
                  CupertinoIcons.phone_fill,
                  size: 16,
                  color: CupertinoColors.inactiveGray,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.location_solid,
                  size: 16,
                  color: CupertinoColors.inactiveGray,
                ),
                Expanded(
                  child:
                      Text('بین امام خمینی ۷۱ و ۷۳', style: Theme.of(context).textTheme.subtitle2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
