import 'package:cooking_app/core/database/isar_service.dart';
import 'package:cooking_app/features/cocktails/data/models/cocktail_entity.dart';
import 'package:cooking_app/features/cocktails/domain/cocktail.dart';
import 'package:isar_community/isar.dart';

class CocktailLocalDataSource {
  final Isar _isar;

  CocktailLocalDataSource({Isar? isar}) : _isar = isar ?? IsarService.isar;

  Future<List<Cocktail>> getCocktails() async {
    final entities = await _isar.cocktailEntitys.where().findAll();
    return entities.map((e) => e.toDomain()).toList();
  }

  Future<Cocktail?> getCocktailById(int id) async {
    final entity = await _isar.cocktailEntitys.get(id);
    return entity?.toDomain();
  }

  // Ersetzt den kompletten Cache, damit im Backend (soft) gelöschte Cocktails
  // auch lokal verschwinden
  Future<void> replaceCocktails(List<Cocktail> cocktails) async {
    await _isar.writeTxn(() async {
      await _isar.cocktailEntitys.clear();
      await _isar.cocktailEntitys
          .putAll(cocktails.map(CocktailEntity.fromDomain).toList());
    });
  }

  Future<void> saveCocktail(Cocktail cocktail) async {
    await _isar.writeTxn(() async {
      await _isar.cocktailEntitys.put(CocktailEntity.fromDomain(cocktail));
    });
  }

  Future<void> deleteCocktail(int id) async {
    await _isar.writeTxn(() async {
      await _isar.cocktailEntitys.delete(id);
    });
  }
}
