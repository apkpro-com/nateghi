import 'package:flutter/cupertino.dart';

class AddCreditPage extends StatelessWidget {
  const AddCreditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('افزودن برگ اعتبار'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: const Icon(CupertinoIcons.checkmark),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('مشخصات برگ اعتبار'),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CupertinoColors.systemGrey4,
                  ),
                  child: Column(
                    children: const [
                      CupertinoTextField(
                        prefix: Text(' شرح:'),
                        placeholder: 'نت رده ۲ و ۳',
                      ),
                      SizedBox(height: 8),
                      CupertinoTextField(
                        prefix: Text(' تاریخ:'),
                        placeholder: '۱۴۰۱/۰۴/۲۸',
                      ),
                      SizedBox(height: 8),
                      CupertinoTextField(
                        prefix: Text(' شماره:'),
                        placeholder: '۷۵۱۶/۱۲۳۴',
                      ),
                      SizedBox(height: 8),
                      CupertinoTextField(
                        prefix: Text(' ردیف:'),
                        placeholder: '۱۱۱۲۲۲',
                      ),
                      SizedBox(height: 8),
                      CupertinoTextField(
                        prefix: Text(' کد فعالیت:'),
                        placeholder: '۱۱۰۱۰۳۱۰۰۷',
                      ),
                      SizedBox(height: 8),
                      CupertinoTextField(
                        prefix: Text(' کد ملاحظات:'),
                        placeholder: '۲۰۰۸',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Destructive Action'),
          )
        ],
      ),
    );
  }
}
