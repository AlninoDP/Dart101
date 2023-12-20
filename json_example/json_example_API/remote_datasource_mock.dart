import 'dart:convert';
import 'dart:math';
import 'advice_model.dart';

class RemoteDataSourceMock {
  final String _jsonData = '''
[
  {"advice_id": 1, "advice": "There are people who care about you — those are the ones who need to seek the most."},
  {"advice_id": 2, "advice": "Use the We'll see' method — When something horrible has happened in your life, say 'We'll see' because sometimes things must fall apart to fall into place."},
  {"advice_id": 3, "advice": "Take initiative — I've had problems with this and that's making an impact without being told what to do. This separates successful from the mediocre"},
  {"advice_id": 4, "advice": "YOLO — You truly only live once, don't regret anything you can do today."},
  {"advice_id": 5, "advice": "Travel whenever you can — The greatest experiences are seeing other cultures and getting a new perspective on life."},
  {"advice_id": 6, "advice": "Pack food for your flight — it's more cost-effective and probably healthier"},
  {"advice_id": 7, "advice":"Choose experience over things — The impact they have over your life will last you a lifetime guaranteed."},
  {"advice_id": 8, "advice":"Learn to forgive — Mistakes happen and judges never benefit you. Just move on to what the future brings."},
  {"advice_id": 9,  "advice":"Be willing to smile more — it makes you happier, it's contagious, lowers stress, more trustworthy, and more competent — all costing you nothing."},
  {"advice_id": 10, "advice":"Don't get attached to stuff — Nothing lasts forever, so don’t base your happiness on materialistic things."}
]
''';

  Future<AdviceModel> getRandomAdviceFromApi() {
    Random random = Random();
    final int randomNumber = random.nextInt(10) + 1;

    final List parsedJson = json.decode(_jsonData);

    final listOfAdvice =
        parsedJson.map((element) => AdviceModel.fromJson(element)).toList();
    return Future.delayed(
        const Duration(milliseconds: 1500), () => listOfAdvice[randomNumber]);
  }
}
