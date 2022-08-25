import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part "storage.g.dart";

@HiveType(typeId: 1)
class Storage extends HiveObject {
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String omuz;
  @HiveField(3)
  final String gogus;
  @HiveField(4)
  final String solKol;
  @HiveField(5)
  final String sagKol;
  @HiveField(6)
  final String sirt;
  @HiveField(7)
  final String bel;
  @HiveField(8)
  final DateTime time;

  Storage(
      {required this.id,
      required this.omuz,
      required this.gogus,
      required this.solKol,
      required this.sagKol,
      required this.sirt,
      required this.bel,
      required this.time});

  factory Storage.create({
    required String boyun,
    required String gogus,
    required String solKol,
    required String sagKol,
    required String sirt,
    required String bel,
    required DateTime time,
  }) {
    return Storage(
      id: const Uuid().v1(),
      omuz: boyun,
      gogus: gogus,
      solKol: solKol,
      sagKol: sagKol,
      sirt: sirt,
      bel: bel,
      time: time,
    );
  }
}
