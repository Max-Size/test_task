import 'package:posts/data/local/db/db.dart';

class ServiceLocator {
  ServiceLocator._();

  static final db = AppDatabase();
}
