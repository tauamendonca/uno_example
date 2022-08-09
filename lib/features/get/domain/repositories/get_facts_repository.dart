import 'package:dartz/dartz.dart';

import '../entities/cat_facts_entity.dart';

abstract class IGetFactsRepository{
  Future<Either<Exception, List<CatFacts>>> getFacts();
}