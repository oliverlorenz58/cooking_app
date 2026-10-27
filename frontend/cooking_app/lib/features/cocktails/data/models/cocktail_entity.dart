import 'package:cooking_app/features/cocktails/domain/cocktail.dart';
import 'package:cooking_app/features/cocktails/domain/ingredient.dart';
import 'package:isar_community/isar.dart';

part 'cocktail_entity.g.dart';

// Lokale Kopie eines Cocktails für den Offline-Cache.
// Die Isar-ID ist die ID vom Backend, damit Updates denselben Eintrag überschreiben.
@collection
class CocktailEntity {
  Id id = Isar.autoIncrement;

  late String name;
  late String taste;
  late double rating;
  DateTime? createdAt;
  List<IngredientEmbedded> ingredients = [];

  CocktailEntity();

  factory CocktailEntity.fromDomain(Cocktail cocktail) {
    return CocktailEntity()
      ..id = cocktail.id
      ..name = cocktail.name
      ..taste = cocktail.taste
      ..rating = cocktail.rating
      ..createdAt = cocktail.createdAt
      ..ingredients =
          cocktail.ingredients.map(IngredientEmbedded.fromDomain).toList();
  }

  Cocktail toDomain() {
    return Cocktail(
      id: id,
      name: name,
      taste: taste,
      rating: rating,
      createdAt: createdAt,
      ingredients: ingredients.map((i) => i.toDomain()).toList(),
    );
  }
}

@embedded
class IngredientEmbedded {
  int? ingredientId;
  String name = '';
  String amount = '';

  IngredientEmbedded();

  factory IngredientEmbedded.fromDomain(Ingredient ingredient) {
    return IngredientEmbedded()
      ..ingredientId = ingredient.id
      ..name = ingredient.name
      ..amount = ingredient.amount;
  }

  Ingredient toDomain() {
    return Ingredient(id: ingredientId, name: name, amount: amount);
  }
}
