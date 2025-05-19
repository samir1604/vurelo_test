import 'package:get_it/get_it.dart';

import '../../features/features.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerFactory<CountryViewModel>(
    () => CountryViewModel(
      CountryModel(name: 'Colombia', countryCode: 'CO', phoneCode: '57'),
    ),
  ); // Example of registering a ViewModel
}
