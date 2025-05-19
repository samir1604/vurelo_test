import 'package:vurelo_test_app/src/features/features.dart';

class CountryViewModel extends ViewNotifier<CountryModel> {
  CountryViewModel(super.value);

  void setCountry(CountryModel model) => setValue(model);
}
