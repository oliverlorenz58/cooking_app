import 'dart:developer';

import 'package:cooking_app/features/cocktails/data/cocktail_local_datasource.dart';
import 'package:cooking_app/features/cocktails/data/cocktail_remote_datasource.dart';
import 'package:cooking_app/features/cocktails/domain/cocktail.dart';
import 'package:cooking_app/features/cocktails/domain/create_cocktail_dto.dart';

// Holt Daten zuerst vom Backend und speichert sie in Isar.
// Ist das Backend nicht erreichbar, wird auf den lokalen Cache zurückgegriffen.
class CocktailRepository {
  final CocktailRemoteDataSource _remote;
  final CocktailLocalDataSource _local;

  CocktailRepository({
    CocktailRemoteDataSource? remote,
    CocktailLocalDataSource? local,
  })  : _remote = remote ?? CocktailRemoteDataSource(),
        _local = local ?? CocktailLocalDataSource();

  Future<List<Cocktail>> fetchCocktails() async {
    try {
      final cocktails = await _remote.fetchCocktails();
      await _local.replaceCocktails(cocktails);
      return cocktails;
    } catch (e) {
      final cached = await _local.getCocktails();
      if (cached.isEmpty) rethrow;

      log("Backend nicht erreichbar, nutze lokalen Cache: $e");
      return cached;
    }
  }

  Future<Cocktail> fetchCocktailById(int id) async {
    try {
      final cocktail = await _remote.fetchCocktailById(id);
      await _local.saveCocktail(cocktail);
      return cocktail;
    } catch (e) {
      final cached = await _local.getCocktailById(id);
      if (cached == null) rethrow;

      log("Backend nicht erreichbar, nutze lokalen Cache: $e");
      return cached;
    }
  }

  // Schreibende Aktionen gehen nur online, danach wird der Cache nachgezogen
  Future<Cocktail> postCocktail(CreateCocktailDto dto) async {
    final cocktail = await _remote.postCocktail(dto);
    await _local.saveCocktail(cocktail);
    return cocktail;
  }

  Future<void> deleteCocktail(int id) async {
    await _remote.deleteCocktail(id);
    await _local.deleteCocktail(id);
  }

  Future<Cocktail> updateCocktail(CreateCocktailDto dto, int id) async {
    final cocktail = await _remote.updateCocktail(dto, id);
    await _local.saveCocktail(cocktail);
    return cocktail;
  }
}
