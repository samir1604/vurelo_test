import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vurelo_test_app/src/commons/commons.dart';
import 'package:vurelo_test_app/src/core/core.dart';

class OnboardingAuth extends StatelessWidget {
  const OnboardingAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(AppImages.vureloLight, height: 35.0),
                      SizedBox(
                        height: context.blockSizeVertical(50),
                        child: Image.asset(AppImages.onBoardingMoney),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            AppStrings.onBoardingAuthTitle,
                            style: context.displayLarge,
                            maxLines: 3,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: context.blockSizeHorizontal(90),
                        child: ElevatedButton(
                          onPressed:
                              () => context.go(NavigationRoutes.navigateToRegister),
                          child: Text(
                            AppStrings.createAccount,
                            style: context.labelLarge,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: context.blockSizeHorizontal(90),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => context.go(NavigationRoutes.navigateToLogin),
                          child: Text(
                            AppStrings.onBoardingAuthLogin,
                            style: AppStyles.unfilledButtonText(
                              context.isSystemDarkMode,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
