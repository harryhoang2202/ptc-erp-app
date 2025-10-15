import 'package:flutter/material.dart';
import 'package:ptc_erp_app/resources/generated/assets.gen.dart';

import 'package:ptc_erp_app/shared/dimens/app_dimen.dart';
import 'package:ptc_erp_app/shared/dimens/responsive_helper.dart';
import '../../../shared/extentions/context_extention.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 240.0.resp(small: 160),
          height: 120.0.resp(small: 80),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.elliptical(
                240.0.resp(small: 160) / 2,
                120.0.resp(small: 80) / 2,
              ),
            ),
          ),
          alignment: Alignment.center,
          child: SizedBox(
            width: 160.0.resp(small: 120),
            height: 100.0.resp(small: 60),
            child: Assets.images.appLogo.image(fit: BoxFit.contain),
          ),
        ),

        SizedBox(height: ResponsiveHelper.spacing * 2),
        Text(
          'ĐĂNG NHẬP'.toUpperCase(),
          style: context.textTheme.headlineLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
