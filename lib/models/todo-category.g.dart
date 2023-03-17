// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo-category.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTodoCategoriesCollection on Isar {
  IsarCollection<TodoCategories> get todoCategories => this.collection();
}

const TodoCategoriesSchema = CollectionSchema(
  name: r'TodoCategories',
  id: -3369762475622751404,
  properties: {
    r'title': PropertySchema(
      id: 0,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _todoCategoriesEstimateSize,
  serialize: _todoCategoriesSerialize,
  deserialize: _todoCategoriesDeserialize,
  deserializeProp: _todoCategoriesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'todo': LinkSchema(
      id: 7088030427426054251,
      name: r'todo',
      target: r'Todos',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _todoCategoriesGetId,
  getLinks: _todoCategoriesGetLinks,
  attach: _todoCategoriesAttach,
  version: '3.0.5',
);

int _todoCategoriesEstimateSize(
  TodoCategories object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _todoCategoriesSerialize(
  TodoCategories object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.title);
}

TodoCategories _todoCategoriesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TodoCategories();
  object.id = id;
  object.title = reader.readString(offsets[0]);
  return object;
}

P _todoCategoriesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _todoCategoriesGetId(TodoCategories object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _todoCategoriesGetLinks(TodoCategories object) {
  return [object.todo];
}

void _todoCategoriesAttach(
    IsarCollection<dynamic> col, Id id, TodoCategories object) {
  object.id = id;
  object.todo.attach(col, col.isar.collection<Todos>(), r'todo', id);
}

extension TodoCategoriesQueryWhereSort
    on QueryBuilder<TodoCategories, TodoCategories, QWhere> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TodoCategoriesQueryWhere
    on QueryBuilder<TodoCategories, TodoCategories, QWhereClause> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<TodoCategories, TodoCategories, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TodoCategoriesQueryFilter
    on QueryBuilder<TodoCategories, TodoCategories, QFilterCondition> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension TodoCategoriesQueryObject
    on QueryBuilder<TodoCategories, TodoCategories, QFilterCondition> {}

extension TodoCategoriesQueryLinks
    on QueryBuilder<TodoCategories, TodoCategories, QFilterCondition> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition> todo(
      FilterQuery<Todos> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'todo');
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'todo', length, true, length, true);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'todo', 0, true, 0, true);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'todo', 0, false, 999999, true);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'todo', 0, true, length, include);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'todo', length, include, 999999, true);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterFilterCondition>
      todoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'todo', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TodoCategoriesQuerySortBy
    on QueryBuilder<TodoCategories, TodoCategories, QSortBy> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TodoCategoriesQuerySortThenBy
    on QueryBuilder<TodoCategories, TodoCategories, QSortThenBy> {
  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<TodoCategories, TodoCategories, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TodoCategoriesQueryWhereDistinct
    on QueryBuilder<TodoCategories, TodoCategories, QDistinct> {
  QueryBuilder<TodoCategories, TodoCategories, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension TodoCategoriesQueryProperty
    on QueryBuilder<TodoCategories, TodoCategories, QQueryProperty> {
  QueryBuilder<TodoCategories, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TodoCategories, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
