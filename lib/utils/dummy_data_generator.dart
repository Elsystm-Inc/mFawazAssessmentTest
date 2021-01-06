import 'package:mfawazTest/data/model/neighborhood_model.dart';
import 'package:mfawazTest/data/model/unit_model.dart';
import 'package:mfawazTest/data/model/post_model.dart';

class DummyDataGenerator {
  DummyDataGenerator() {
    for (int i = 0; i < 4; i++) {
      neighborhoods.add(
        Neighborhood.fromJson(_DummyDataHolder.neighborhoodDataModel),
      );

      units.add(
        Unit.fromJson(_DummyDataHolder.unitDataModel),
      );
    }
    for (int i = 0; i < 2; i++) {
      posts.add(
        Post.fromJson(_DummyDataHolder.postDataModel),
      );
    }
  }
  List<Neighborhood> neighborhoods = [];
  List<Unit> units = [];
  List<Post> posts = [];
}

// Class that hold JSON data that will parsed by the corspoinding Model by the DummyDataGenerator
// DummyDataGenerator will be called in each screen that needs it as an object.
class _DummyDataHolder {
  static const Map<String, dynamic> neighborhoodDataModel = const {
    "id": "1",
    "name": "NEW CAPITAL",
    "no_units": "145 Unit",
    "image": "assets/images/n1.png",
  };
  static const Map<String, dynamic> unitDataModel = const {
    "id": "1",
    "city": "Cairo, Mostakbal City - Future..",
    "desc": "Exclusive Mandate I Exceptional Fully Upgraded..",
    "area": "300",
    "price": "3,150,000",
    "no_br": "3",
    "no_r": "3",
    "images": [
      "assets/images/u1.png",
      "assets/images/u2.png",
      "assets/images/u3.png",
      "assets/images/u5.png",
    ],
    "type": "1",
  };

  static const Map<String, dynamic> postDataModel = const {
    "id": "1",
    "name": "Yasmen Said",
    "question": "What is your question ?",
    "image": "assets/images/p1.png",
    "date": "2 Days",
    "no_replies": "12",
    "no_shares": "4k",
    "content":
        "Question Here Lorem Ipsum is simply dummy text of the printing? Lorem Ipsum has been the industry's ?",
    "no_ups": "0",
    "replies": [
      {
        "id": "2",
        "name": "Mhamd Hassan",
        "date": "2 Days",
        "image": "assets/images/p2.png",
        "content":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
        "no_ups": "120",
        "no_replies": "10",
      },
    ],
  };
}
