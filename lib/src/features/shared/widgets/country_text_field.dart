import 'package:country_picker/country_picker.dart';
import 'package:flag/flag_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import 'package:vurelo_test_app/src/commons/commons.dart';
import 'package:vurelo_test_app/src/features/features.dart';

class CountryTextField extends StatelessWidget {
  const CountryTextField({
    super.key,
    required this.countryModel,
    required this.onChanged,
    required this.phoneController,
    required this.form,
  });

  final CountryModel countryModel;
  final ValueChanged<CountryModel> onChanged;
  final TextEditingController phoneController;
  final GlobalKey<FormState> form;

  @override
  Widget build(BuildContext context) {
    PhoneInputFormatter formatter = PhoneInputFormatter(
      defaultCountryCode: countryModel.countryCode,
    );

    phoneController.value = _formatNumber(formatter, phoneController.text);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => _showCountryPicker(context),
          child: Container(
            width: 115,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.surfaceLight,
              border: Border.all(color: AppColors.borderColor),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10.0),
                Flag.fromString(
                  countryModel.countryCode,
                  width: 20,
                  height: 15,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 5.0),
                Text('+', style: context.labelMedium),
                Text(countryModel.phoneCode, style: context.labelMedium),
                SizedBox(width: 10.0),
                Icon(Icons.arrow_drop_down, color: Colors.grey),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Form(
              key: form,
              child: TextFormField(
                style: context.labelMedium?.copyWith(color: AppColors.onSecondaryColorLight),
                autofocus: true,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                inputFormatters: [formatter],
                decoration: InputDecoration(
                  border: AppStyles.phoneBorder,
                  enabledBorder: AppStyles.phoneBorder,
                  disabledBorder: AppStyles.phoneBorder,
                  errorBorder: AppStyles.phoneBorder,
                  focusedBorder: AppStyles.phoneBorder,
                  focusedErrorBorder: AppStyles.phoneBorder,
                  filled: true,
                  fillColor: AppColors.textInputFilled,
                ),
                validator: (value) {
                  final text = value?.trim() ?? '';
                  if (text.isEmpty) return AppStrings.emptyPhoneNumber;

                  final digits = toNumericString(text);
                  if (digits.length < 8) {
                    return AppStrings.numberToShort;
                  }

                  return null;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextEditingValue _formatNumber(PhoneInputFormatter formater, String phone) {
    final rawPhone = toNumericString(phone);
    final newFormatter = formater.formatEditUpdate(
      const TextEditingValue(),
      TextEditingValue(text: rawPhone),
    );
    return newFormatter;
  }

  void _showCountryPicker(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final keyboardHeight = mediaQuery.viewInsets.bottom;

    //TODO: Fix keyboard overflow

    showCountryPicker(
      useSafeArea: true,
      context: context,
      showPhoneCode: true,
      favorite: <String>['CO', 'VE'],
      moveAlongWithKeyboard: true,
      customFlagBuilder:
          (country) => Flag.fromString(
            country.countryCode,
            width: 25,
            height: 20,
            fit: BoxFit.fill,
          ),
      countryListTheme: CountryListThemeData(
        margin: EdgeInsets.only(top: 5.0),
        bottomSheetHeight: context.blockSizeVertical(60),
        inputDecoration: InputDecoration(
          labelText: 'Buscar por país o código',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xFF8C98A8).withOpacity(0.2),
            ),
          ),
        ),
        searchTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),

      onSelect: (Country country) {
        onChanged(
          CountryModel(
            name: country.name,
            phoneCode: country.phoneCode,
            countryCode: country.countryCode,
          ),
        );
      },
    );
  }
}
