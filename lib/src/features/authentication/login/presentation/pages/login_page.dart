import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../commons/commons.dart';
import '../../../../features.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _phoneController;
  late final CountryViewModel _countryViewModel;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _countryViewModel = CountryViewModel(
      CountryModel(countryCode: 'CO', phoneCode: '57', name: 'Colombia'),
    );
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ExpandingDotsEffect(),
                  ),
                ),
                const SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.initLogin,
                    style: AppStyles.smallText(context.isSystemDarkMode),
                  ),
                ),
                const SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.loginTitle,
                    style: context.displayMedium,
                  ),
                ),
                const SizedBox(height: 25.0),
                ValueListenableBuilder(
                  valueListenable: _countryViewModel.listenable,
                  builder:
                      (context, newValue, __) => CountryTextField(
                    form: _formKey,
                    countryModel: _countryViewModel.value,
                    phoneController: _phoneController,
                    onChanged:
                        (model) => _countryViewModel.setCountry(model),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: context.blockSizeHorizontal(90),
                  child: ElevatedButton(
                    onPressed: () {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;
                      if (!isValid) {
                        debugPrint('El numero es incorrecto');
                      }
                    },
                    child: Text(
                      AppStrings.continueString,
                      style: context.labelLarge,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey, thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        AppStrings.continueWith,
                        style: context.labelMedium,
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey, thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Spacer(),
                    Expanded(
                      child: CircleButton(
                        width: 50.0,
                        height: 50.0,
                        icon: AppImages.iconEnvelope,
                        onPressed: () {},
                      ),
                    ),
                    CircleButton(
                      width: 50.0,
                      height: 50.0,
                      icon: AppImages.iconGoogle,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: CircleButton(
                        width: 50.0,
                        height: 50.0,
                        icon: AppImages.iconApple,
                        onPressed: () {},
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 15.0),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14, height: 1.2),
                    children: [
                      TextSpan(
                        text: AppStrings.areYouNew,
                        style: context.labelMedium,
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: AppStrings.joinUs,
                        style: AppStyles.smallText(context.isSystemDarkMode),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _countryViewModel.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.dispose();
  }
}
