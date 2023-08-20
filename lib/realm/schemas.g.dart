// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Stock extends _Stock with RealmEntity, RealmObjectBase, RealmObject {
  Stock(
    ObjectId id,
    String exchange,
    String stockSymbol,
    String type,
    String companyName,
    String status,
    String sharePrice,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'exchange', exchange);
    RealmObjectBase.set(this, 'stockSymbol', stockSymbol);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'companyName', companyName);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'sharePrice', sharePrice);
  }

  Stock._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get exchange =>
      RealmObjectBase.get<String>(this, 'exchange') as String;
  @override
  set exchange(String value) => RealmObjectBase.set(this, 'exchange', value);

  @override
  String get stockSymbol =>
      RealmObjectBase.get<String>(this, 'stockSymbol') as String;
  @override
  set stockSymbol(String value) =>
      RealmObjectBase.set(this, 'stockSymbol', value);

  @override
  String get type => RealmObjectBase.get<String>(this, 'type') as String;
  @override
  set type(String value) => RealmObjectBase.set(this, 'type', value);

  @override
  String get companyName =>
      RealmObjectBase.get<String>(this, 'companyName') as String;
  @override
  set companyName(String value) =>
      RealmObjectBase.set(this, 'companyName', value);

  @override
  String get status => RealmObjectBase.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObjectBase.set(this, 'status', value);

  @override
  String get sharePrice =>
      RealmObjectBase.get<String>(this, 'sharePrice') as String;
  @override
  set sharePrice(String value) =>
      RealmObjectBase.set(this, 'sharePrice', value);

  @override
  Stream<RealmObjectChanges<Stock>> get changes =>
      RealmObjectBase.getChanges<Stock>(this);

  @override
  Stock freeze() => RealmObjectBase.freezeObject<Stock>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Stock._);
    return const SchemaObject(ObjectType.realmObject, Stock, 'Stock', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('exchange', RealmPropertyType.string),
      SchemaProperty('stockSymbol', RealmPropertyType.string),
      SchemaProperty('type', RealmPropertyType.string),
      SchemaProperty('companyName', RealmPropertyType.string),
      SchemaProperty('status', RealmPropertyType.string),
      SchemaProperty('sharePrice', RealmPropertyType.string),
    ]);
  }
}
