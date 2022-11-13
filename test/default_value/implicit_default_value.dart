// ignore_for_file: annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import 'default_value_interface.dart';
import 'default_value_interface.dart' as dvi hide Greek;

part 'implicit_default_value.g.dart';

dvi.DefaultValue fromJson(Map<String, dynamic> json) =>
    _$DefaultValueImplicitFromJson(json);

@JsonSerializable()
class DefaultValueImplicit implements dvi.DefaultValue {
  final bool fieldBool;

  final String fieldString;

  final int fieldInt;

  final double fieldDouble;

  final List fieldListEmpty;

  final Set fieldSetEmpty;

  final Map fieldMapEmpty;

  final List<int> fieldListSimple;

  final Set<String> fieldSetSimple;

  final Map<String, int> fieldMapSimple;

  final Map<String, List<String>> fieldMapListString;

  final Greek fieldEnum;

  final ConstClass constClass;

  @ConstClassConverter()
  ConstClass valueFromConverter;

  @JsonKey(fromJson: constClassFromJson, toJson: constClassToJson)
  ConstClass valueFromFunction;

  DefaultValueImplicit({
    this.fieldBool = true,
    this.fieldString = 'string',
    this.fieldInt = 42,
    this.fieldDouble = 3.14,
    this.fieldListEmpty = const [],
    this.fieldSetEmpty = const {},
    this.fieldMapEmpty = const {},
    this.fieldListSimple = const [1, 2, 3],
    this.fieldSetSimple = const {'entry1', 'entry2'},
    this.fieldMapSimple = const {'answer': 42},
    this.fieldMapListString = const {
      'root': ['child']
    },
    this.fieldEnum = Greek.beta,
    this.constClass = const ConstClass('value'),
    this.valueFromConverter = const ConstClass('value'),
    this.valueFromFunction = const ConstClass('value'),
  });

  factory DefaultValueImplicit.fromJson(Map<String, dynamic> json) =>
      _$DefaultValueImplicitFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultValueImplicitToJson(this);
}
