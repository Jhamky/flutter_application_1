// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Isardc.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsardcCollection on Isar {
  IsarCollection<Isardc> get isardcs => this.collection();
}

const IsardcSchema = CollectionSchema(
  name: r'Isardc',
  id: 1664321660058701048,
  properties: {
    r'adicional': PropertySchema(
      id: 0,
      name: r'adicional',
      type: IsarType.string,
    ),
    r'asentamiento': PropertySchema(
      id: 1,
      name: r'asentamiento',
      type: IsarType.string,
    ),
    r'calle': PropertySchema(
      id: 2,
      name: r'calle',
      type: IsarType.string,
    ),
    r'codigopostal': PropertySchema(
      id: 3,
      name: r'codigopostal',
      type: IsarType.string,
    ),
    r'estado': PropertySchema(
      id: 4,
      name: r'estado',
      type: IsarType.string,
    ),
    r'municipio': PropertySchema(
      id: 5,
      name: r'municipio',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _isardcEstimateSize,
  serialize: _isardcSerialize,
  deserialize: _isardcDeserialize,
  deserializeProp: _isardcDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isardcGetId,
  getLinks: _isardcGetLinks,
  attach: _isardcAttach,
  version: '3.1.0+1',
);

int _isardcEstimateSize(
  Isardc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.adicional.length * 3;
  bytesCount += 3 + object.asentamiento.length * 3;
  bytesCount += 3 + object.calle.length * 3;
  bytesCount += 3 + object.codigopostal.length * 3;
  bytesCount += 3 + object.estado.length * 3;
  bytesCount += 3 + object.municipio.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _isardcSerialize(
  Isardc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adicional);
  writer.writeString(offsets[1], object.asentamiento);
  writer.writeString(offsets[2], object.calle);
  writer.writeString(offsets[3], object.codigopostal);
  writer.writeString(offsets[4], object.estado);
  writer.writeString(offsets[5], object.municipio);
  writer.writeString(offsets[6], object.name);
}

Isardc _isardcDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Isardc();
  object.adicional = reader.readString(offsets[0]);
  object.asentamiento = reader.readString(offsets[1]);
  object.calle = reader.readString(offsets[2]);
  object.codigopostal = reader.readString(offsets[3]);
  object.estado = reader.readString(offsets[4]);
  object.id = id;
  object.municipio = reader.readString(offsets[5]);
  object.name = reader.readString(offsets[6]);
  return object;
}

P _isardcDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isardcGetId(Isardc object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isardcGetLinks(Isardc object) {
  return [];
}

void _isardcAttach(IsarCollection<dynamic> col, Id id, Isardc object) {
  object.id = id;
}

extension IsardcQueryWhereSort on QueryBuilder<Isardc, Isardc, QWhere> {
  QueryBuilder<Isardc, Isardc, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsardcQueryWhere on QueryBuilder<Isardc, Isardc, QWhereClause> {
  QueryBuilder<Isardc, Isardc, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Isardc, Isardc, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterWhereClause> idBetween(
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

extension IsardcQueryFilter on QueryBuilder<Isardc, Isardc, QFilterCondition> {
  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adicional',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adicional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adicional',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adicional',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> adicionalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adicional',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'asentamiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'asentamiento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'asentamiento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asentamiento',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> asentamientoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'asentamiento',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'calle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'calle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calle',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> calleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'calle',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codigopostal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'codigopostal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'codigopostal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigopostal',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> codigopostalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codigopostal',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'estado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> estadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'municipio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'municipio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'municipio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'municipio',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> municipioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'municipio',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension IsardcQueryObject on QueryBuilder<Isardc, Isardc, QFilterCondition> {}

extension IsardcQueryLinks on QueryBuilder<Isardc, Isardc, QFilterCondition> {}

extension IsardcQuerySortBy on QueryBuilder<Isardc, Isardc, QSortBy> {
  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByAdicional() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adicional', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByAdicionalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adicional', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByAsentamiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asentamiento', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByAsentamientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asentamiento', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByCalle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calle', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByCalleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calle', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByCodigopostal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigopostal', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByCodigopostalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigopostal', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByMunicipio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'municipio', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByMunicipioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'municipio', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsardcQuerySortThenBy on QueryBuilder<Isardc, Isardc, QSortThenBy> {
  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByAdicional() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adicional', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByAdicionalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adicional', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByAsentamiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asentamiento', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByAsentamientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asentamiento', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByCalle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calle', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByCalleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calle', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByCodigopostal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigopostal', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByCodigopostalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigopostal', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByMunicipio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'municipio', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByMunicipioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'municipio', Sort.desc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Isardc, Isardc, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsardcQueryWhereDistinct on QueryBuilder<Isardc, Isardc, QDistinct> {
  QueryBuilder<Isardc, Isardc, QDistinct> distinctByAdicional(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adicional', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByAsentamiento(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'asentamiento', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByCalle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByCodigopostal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codigopostal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByEstado(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByMunicipio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'municipio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Isardc, Isardc, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension IsardcQueryProperty on QueryBuilder<Isardc, Isardc, QQueryProperty> {
  QueryBuilder<Isardc, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> adicionalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adicional');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> asentamientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'asentamiento');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> calleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calle');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> codigopostalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codigopostal');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> municipioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'municipio');
    });
  }

  QueryBuilder<Isardc, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
