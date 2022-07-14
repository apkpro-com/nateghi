import 'dart:math';

class Rnd {
  var titles = [
    'نت رده ۲ و ۳',
    'بازسازی مهمانسرا',
    'مصرفی',
    'تجهیز مهمانسرا',
  ];

  String get title => titles[Random().nextInt(titles.length)];

  var factorTitles = [
    'پنجره آهنی بزرگ دو درب بالارو و ۸ قلم دیگر',
    'رنگ و ۲ قلم دیگر',
    'درب چوبی',
    'گلگیر سمت راست و ۱ قلم دیگر',
  ];

  String get factorTitle => factorTitles[Random().nextInt(factorTitles.length)];

  var names = [
    ' علی علوی',
    'حسن حسنی',
    'علی یاوری',
    'محمد داوری',
  ];

  String get name => names[Random().nextInt(names.length)];
}
