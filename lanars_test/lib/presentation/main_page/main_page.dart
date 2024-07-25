import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/core/functions.dart';
import 'package:lanars_test/domain/bloc/main_page_cubit/main_page_cubit.dart';
import 'package:lanars_test/domain/bloc/main_page_cubit/main_page_state.dart';
import 'package:lanars_test/presentation/main_page/ui/alphabet_list.dart';
import 'package:lanars_test/presentation/resources/assets_manager.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/side_menu/side_menu_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: BlocConsumer<MainPageCubit, MainPageState>(
          listener: (context, state) {
        if (state.error?.message.isNotEmpty ?? false) {
          showScaffoldSnackBar(
            context: context,
            error: state.error!.message,
          );
        }
      }, listenWhen: (prev, current) {
        return prev.error != current.error;
      }, builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: context.colors.primary,
              ),
            ),
          );
        }

        return Scaffold(
          key: _scaffoldKey,
          drawer: SideMenuView(
            userMode: state.userModel,
          ),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: context.colors.background,
            leading: InkWell(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              borderRadius: BorderRadius.circular(100),
              child: SvgPicture.asset(
                SvgAssets.sideMenuIcon,
                fit: BoxFit.scaleDown,
              ),
            ),
            title: Text('List page', style: TextStyles.titleMedium),
            actions: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(100),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SvgPicture.asset(
                    SvgAssets.searchIcon,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<MainPageCubit>().getListPhotographer(
                    isReload: true,
                  );
            },
            child: AlphabetList(
              key: const ValueKey('alphabetList'),
              photos: state.photographersModel ?? [],
            ),
          ),
        );
      }),
    );
  }
}
