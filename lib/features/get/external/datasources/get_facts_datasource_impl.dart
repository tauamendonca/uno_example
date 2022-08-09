import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/cat_facts_entity.dart';

import '../../infra/datasources/get_facts_datasource.dart';
import '../../infra/models/cat_facts_dto.dart';

class GetFactsDataSource implements IGetFactsDataSource {
  final Uno uno;

  GetFactsDataSource(this.uno);

  @override
  Future<List<CatFacts>> getFacts() async {
    final response = await uno.get('https://catfact.ninja/fact');
    List<CatFacts> facts = [];

    if (response.status == 200) {
      //CatFacts fact = CatFactsDto.fromMap(response.data);
      facts.add(CatFactsDto.fromMap(response.data));
      return facts;
    } else {
      throw Exception();
    }
  }
}
