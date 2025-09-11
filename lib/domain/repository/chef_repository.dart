import 'package:cleanarchitecture_v2/domain/model/chef/chef_model.dart';

abstract interface class ChefRepository {
  Future<List<ChefModel>> getChefs();

  Future<List<ChefModel>> getChefById(int chefId);
}
