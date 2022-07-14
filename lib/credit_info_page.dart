import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nateghi/factors_page.dart';
import 'package:nateghi/incomes_page.dart';

class CreditInfoPage extends StatefulWidget {
  const CreditInfoPage({Key? key}) : super(key: key);

  @override
  State<CreditInfoPage> createState() => _CreditInfoPageState();
}

class _CreditInfoPageState extends State<CreditInfoPage> {
  bool s = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // middle: Text('Home'),
        trailing: const Icon(CupertinoIcons.add),
        middle: CupertinoSlidingSegmentedControl<bool>(
          backgroundColor: CupertinoColors.systemGrey2,
          thumbColor: CupertinoColors.activeBlue,
          // This represents the currently selected segmented control.
          groupValue: s,
          // Callback that sets the selected segmented control.
          onValueChanged: (bool? value) {
            if (value != null) {
              setState(() {
                s = value;
              });
            }
          },
          children: const <bool, Widget>{
            true: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'فاکتورها',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            false: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'واریزی ها',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          },
        ),
      ),
      child: s ? const FactorsPage() : const IncomesPage(),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.lightBackgroundGray,
      padding: const EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text('بازسازی مهمانسرا ۳۵۰ تومنی')),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('تاریخ:    ', style: Theme.of(context).textTheme.bodyText2),
                    Text('ردیف:    ', style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('۱۴۰۱/۰۴/۲۸', style: Theme.of(context).textTheme.subtitle1),
                    Text('۱۱۱۲۲۲', style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('شماره:    ', style: Theme.of(context).textTheme.bodyText2),
                    Text('کد فعالیت:    ', style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('۰۱/۷۷۴۷/۴۸/۱۹۵۹', style: Theme.of(context).textTheme.subtitle1),
                    Text('۱۱۰۱۰۴۷۰۰۳', style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
              ],
            ),
            Text('کد ملاحظات:  ۲۰۰۸', style: Theme.of(context).textTheme.subtitle1),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('کل واریزی:    '),
                    Text('جمع فاکتور ها:    '),
                    Text('مانده کل:    '),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('۲۰۰,۰۰۰,۰۰۰ ریال'),
                    Text('۱۸۰,۰۰۰,۰۰۰ ریال'),
                    Text('۲,۰۰۰,۰۰۰ ریال'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
