import 'package:realm/realm.dart';
part 'schemas.g.dart';

@RealmModel()
class _Stock {

  @PrimaryKey()
  @MapTo('_id')
  late ObjectId id;

  late String exchange;

  late String stockSymbol;

  late String type;

  late String companyName;

  late String status;

  late String sharePrice;

}

