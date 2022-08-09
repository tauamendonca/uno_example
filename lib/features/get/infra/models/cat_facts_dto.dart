import 'dart:convert';

import '../../domain/entities/cat_facts_entity.dart';

class CatFactsDto extends CatFacts {
  @override
  final String fact;
  final int length;

  CatFactsDto({required this.fact,required this.length}) : super(fact: fact, lenght:length);

  factory CatFactsDto.fromMap(Map<String, dynamic> map) {
    return CatFactsDto(
      fact: map['fact'] ?? '',
      length: map['lenght'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'fact': fact});
    //result.addAll({'lenght': length});

    return result;
  }

  String toJson() => json.encode(toMap());

  factory CatFactsDto.fromJson(String source) =>
      CatFactsDto.fromMap(json.decode(source));
}

