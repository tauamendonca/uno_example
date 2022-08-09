import 'package:uno_example/features/get/domain/entities/cat_facts_entity.dart';

abstract class IGetFactsDataSource{
  Future<List<CatFacts>> getFacts();
}