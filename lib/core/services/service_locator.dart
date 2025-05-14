import 'package:dalel_app/core/database/cash_helper/CashHelper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CashHelper>(CashHelper());
}
