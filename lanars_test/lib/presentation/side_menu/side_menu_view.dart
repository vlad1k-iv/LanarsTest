import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/domain/model/models.dart';
import 'package:lanars_test/presentation/resources/assets_manager.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/widgets/app_remote_image.dart';

class SideMenuView extends StatefulWidget {
  const SideMenuView({
    required this.userMode,
    super.key,
  });

  final UserModel? userMode;

  @override
  State<SideMenuView> createState() => _SideMenuViewState();
}

class _SideMenuViewState extends State<SideMenuView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.8,
      color: context.colors.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            32,
            16,
            32,
            82,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: TextStyles.displayLarge.apply(
                  color: context.colors.onSurfaceVariant,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: AppRemoteImage(
                    url: widget.userMode?.avatar ?? '',
                    width: 56,
                    height: 56,
                  ),
                ),
                title: Text(
                  widget.userMode?.userNmae ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.bodyMedium,
                ),
                subtitle: Text(
                  widget.userMode?.email ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyles.displaySmall,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  SvgPicture.asset(
                    SvgAssets.logoutIcon,
                    fit: BoxFit.scaleDown,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Log out',
                    style: TextStyles.displayLarge.apply(
                      color: context.colors.onSurfaceVariant,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
