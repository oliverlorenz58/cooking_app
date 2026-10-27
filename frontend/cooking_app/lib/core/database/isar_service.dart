import 'package:cooking_app/features/cocktails/data/models/cocktail_entity.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Isar? _isar;

  // Wird einmal in main() aufgerufen, bevor die App startet
  static Future<void> init() async {
    if (_isar != null) return;

    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [CocktailEntitySchema],
      directory: dir.path,
    );
  }

  static Isar get isar {
    final isar = _isar;
    if (isar == null) {
      throw StateError('IsarService.init() wurde noch nicht aufgerufen');
    }
    return isar;
  }
}
