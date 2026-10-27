// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types, experimental_member_use

extension GetCocktailEntityCollection on Isar {
  IsarCollection<CocktailEntity> get cocktailEntitys => this.collection();
}

const CocktailEntitySchema = CollectionSchema(
  name: r'CocktailEntity',
  id: 7029079327436829048,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'ingredients': PropertySchema(
      id: 1,
      name: r'ingredients',
      type: IsarType.objectList,

      target: r'IngredientEmbedded',
    ),
    r'name': PropertySchema(id: 2, name: r'name', type: IsarType.string),
    r'rating': PropertySchema(id: 3, name: r'rating', type: IsarType.double),
    r'taste': PropertySchema(id: 4, name: r'taste', type: IsarType.string),
  },

  estimateSize: _cocktailEntityEstimateSize,
  serialize: _cocktailEntitySerialize,
  deserialize: _cocktailEntityDeserialize,
  deserializeProp: _cocktailEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'IngredientEmbedded': IngredientEmbeddedSchema},

  getId: _cocktailEntityGetId,
  getLinks: _cocktailEntityGetLinks,
  attach: _cocktailEntityAttach,
  version: '3.4.1',
);

int _cocktailEntityEstimateSize(
  CocktailEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ingredients.length * 3;
  {
    final offsets = allOffsets[IngredientEmbedded]!;
    for (var i = 0; i < object.ingredients.length; i++) {
      final value = object.ingredients[i];
      bytesCount += IngredientEmbeddedSchema.estimateSize(
        value,
        offsets,
        allOffsets,
      );
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.taste.length * 3;
  return bytesCount;
}

void _cocktailEntitySerialize(
  CocktailEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeObjectList<IngredientEmbedded>(
    offsets[1],
    allOffsets,
    IngredientEmbeddedSchema.serialize,
    object.ingredients,
  );
  writer.writeString(offsets[2], object.name);
  writer.writeDouble(offsets[3], object.rating);
  writer.writeString(offsets[4], object.taste);
}

CocktailEntity _cocktailEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CocktailEntity();
  object.createdAt = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.ingredients =
      reader.readObjectList<IngredientEmbedded>(
        offsets[1],
        IngredientEmbeddedSchema.deserialize,
        allOffsets,
        IngredientEmbedded(),
      ) ??
      [];
  object.name = reader.readString(offsets[2]);
  object.rating = reader.readDouble(offsets[3]);
  object.taste = reader.readString(offsets[4]);
  return object;
}

P _cocktailEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<IngredientEmbedded>(
                offset,
                IngredientEmbeddedSchema.deserialize,
                allOffsets,
                IngredientEmbedded(),
              ) ??
              [])
          as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cocktailEntityGetId(CocktailEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cocktailEntityGetLinks(CocktailEntity object) {
  return [];
}

void _cocktailEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  CocktailEntity object,
) {
  object.id = id;
}

extension CocktailEntityQueryWhereSort
    on QueryBuilder<CocktailEntity, CocktailEntity, QWhere> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CocktailEntityQueryWhere
    on QueryBuilder<CocktailEntity, CocktailEntity, QWhereClause> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension CocktailEntityQueryFilter
    on QueryBuilder<CocktailEntity, CocktailEntity, QFilterCondition> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'ingredients', length, true, length, true);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'ingredients', 0, true, 0, true);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'ingredients', 0, false, 999999, true);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'ingredients', 0, true, length, include);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'ingredients', length, include, 999999, true);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredients',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ratingEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'rating',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ratingGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'rating',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ratingLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'rating',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ratingBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'rating',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'taste',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'taste',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'taste',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'taste', value: ''),
      );
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  tasteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'taste', value: ''),
      );
    });
  }
}

extension CocktailEntityQueryObject
    on QueryBuilder<CocktailEntity, CocktailEntity, QFilterCondition> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterFilterCondition>
  ingredientsElement(FilterQuery<IngredientEmbedded> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ingredients');
    });
  }
}

extension CocktailEntityQueryLinks
    on QueryBuilder<CocktailEntity, CocktailEntity, QFilterCondition> {}

extension CocktailEntityQuerySortBy
    on QueryBuilder<CocktailEntity, CocktailEntity, QSortBy> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy>
  sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByTaste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taste', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> sortByTasteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taste', Sort.desc);
    });
  }
}

extension CocktailEntityQuerySortThenBy
    on QueryBuilder<CocktailEntity, CocktailEntity, QSortThenBy> {
  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy>
  thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByTaste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taste', Sort.asc);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QAfterSortBy> thenByTasteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taste', Sort.desc);
    });
  }
}

extension CocktailEntityQueryWhereDistinct
    on QueryBuilder<CocktailEntity, CocktailEntity, QDistinct> {
  QueryBuilder<CocktailEntity, CocktailEntity, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<CocktailEntity, CocktailEntity, QDistinct> distinctByTaste({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taste', caseSensitive: caseSensitive);
    });
  }
}

extension CocktailEntityQueryProperty
    on QueryBuilder<CocktailEntity, CocktailEntity, QQueryProperty> {
  QueryBuilder<CocktailEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CocktailEntity, DateTime?, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<CocktailEntity, List<IngredientEmbedded>, QQueryOperations>
  ingredientsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredients');
    });
  }

  QueryBuilder<CocktailEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CocktailEntity, double, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<CocktailEntity, String, QQueryOperations> tasteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taste');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types, experimental_member_use

const IngredientEmbeddedSchema = Schema(
  name: r'IngredientEmbedded',
  id: 6498765893607539485,
  properties: {
    r'amount': PropertySchema(id: 0, name: r'amount', type: IsarType.string),
    r'ingredientId': PropertySchema(
      id: 1,
      name: r'ingredientId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(id: 2, name: r'name', type: IsarType.string),
  },

  estimateSize: _ingredientEmbeddedEstimateSize,
  serialize: _ingredientEmbeddedSerialize,
  deserialize: _ingredientEmbeddedDeserialize,
  deserializeProp: _ingredientEmbeddedDeserializeProp,
);

int _ingredientEmbeddedEstimateSize(
  IngredientEmbedded object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.amount.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _ingredientEmbeddedSerialize(
  IngredientEmbedded object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.amount);
  writer.writeLong(offsets[1], object.ingredientId);
  writer.writeString(offsets[2], object.name);
}

IngredientEmbedded _ingredientEmbeddedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IngredientEmbedded();
  object.amount = reader.readString(offsets[0]);
  object.ingredientId = reader.readLongOrNull(offsets[1]);
  object.name = reader.readString(offsets[2]);
  return object;
}

P _ingredientEmbeddedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IngredientEmbeddedQueryFilter
    on QueryBuilder<IngredientEmbedded, IngredientEmbedded, QFilterCondition> {
  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'amount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'amount',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'amount',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'amount', value: ''),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  amountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'amount', value: ''),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'ingredientId'),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'ingredientId'),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ingredientId', value: value),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ingredientId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ingredientId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  ingredientIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ingredientId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<IngredientEmbedded, IngredientEmbedded, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }
}

extension IngredientEmbeddedQueryObject
    on QueryBuilder<IngredientEmbedded, IngredientEmbedded, QFilterCondition> {}
