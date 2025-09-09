import 'package:cleanarchitecture_v2/domain/model/procedure/procedure_model.dart';

abstract interface class ProcedureRepository {
  Future<List<ProcedureModel>> getProcedures();

  Future<List<ProcedureModel>> getProcedureById(int recipeId);
}
