import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/device/device_fn.dart';
import 'package:haven/utils/helpers/helpers.dart';
import 'package:haven/utils/themes/custom_themes/appbar_theme.dart';
import 'package:iconsax/iconsax.dart';

class HavenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HavenAppbar({
    super.key,
    this.title,
    required this.showBackArrow,
    this.actions,
    this.leadingOnPressed,
  });

  final String? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actionsIconTheme: HavenDeviceHelpers.isDarkMode(context)
            ? HavenAppBarTheme.darkAppBarTheme.actionsIconTheme
            : HavenAppBarTheme.lightAppBarTheme.actionsIconTheme,
        leading: showBackArrow
            ? IconButton(
                onPressed: HavenHelpers.goBack,
                icon: Icon(Iconsax.arrow_left),
              )
            : IconButton(
                onPressed: leadingOnPressed,
                icon: Icon(
                  Iconsax.menu_14,
                  color: HavenDeviceHelpers.isDarkMode(context)
                      ? HavenColors.whiteAccent
                      : HavenColors.blackAccent,
                ),
              ),
        title: Text(title ?? ''),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(HavenDeviceHelpers.getAppBarHeight());
}
