import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/credit_info_page.dart';

class IncomesPage extends StatelessWidget {
  const IncomesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('۱۴۰۱/۰۴/۳۰', style: Theme.of(context).textTheme.subtitle2),
            const Text('۱۰۰,۰۰۰,۰۰۰ ریال'),
          ],
        ),
      ),
    );
  }
}
