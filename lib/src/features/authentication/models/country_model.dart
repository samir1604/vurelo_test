import '../../features.dart';

class CountryModel extends Model {
  CountryModel({
    required this.countryCode,
    required this.phoneCode,
    required this.name,
  });

  final String phoneCode;
  final String name;
  final String countryCode;

  @override
  List<Object?> get props => [phoneCode, name, countryCode];
}
