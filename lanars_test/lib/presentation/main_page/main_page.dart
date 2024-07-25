import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/presentation/resources/assets_manager.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/side_menu/side_menu_view.dart';
import 'package:lanars_test/presentation/widgets/app_remote_image.dart';

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
      child: Scaffold(
        key: _scaffoldKey,
        drawer: SideMenuView(),
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
        body: AlphabetList(),
      ),
    );
  }
}

class AlphabetList extends StatelessWidget {
  final List<String> items = [
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
    'Arande Allée',
    'Brande Allée',
    'Grande Allée',
    'Pande Allée',
    'Grande Allée',
    'Arande Allée',
    'Orande Allée',
    'Vande Allée',
    'Grande Allée',
    'Brande Allée',
  ];

  @override
  Widget build(BuildContext context) {
    final sortedItems = _groupItemsByFirstLetter(items);

    return SizedBox(
      width: context.screenWidth - 32,
      child: Scrollbar(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: sortedItems.length,
          itemBuilder: (context, index) {
            final item = sortedItems[index];
            return Row(
              children: [
                _buildListItem(
                  item['title'],
                  context,
                  item['isHeader'],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _groupItemsByFirstLetter(List<String> items) {
    final sortedItems = items..sort();
    final groupedItems = <Map<String, dynamic>>[];
    String? currentLetter;

    for (var item in sortedItems) {
      final firstLetter = item[0].toUpperCase();

      if (currentLetter != firstLetter) {
        currentLetter = firstLetter;
        groupedItems.add({
          'isHeader': true,
          'title': item,
        });
      } else {
        groupedItems.add({
          'isHeader': false,
          'title': item,
        });
      }
    }

    return groupedItems;
  }

  Widget _buildHeader(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[300],
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListItem(
    String title,
    BuildContext context,
    bool isFirstItem,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 27,
            child: isFirstItem
                ? Text(title[0], style: TextStyles.titleSmall)
                : null,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              0,
              4,
              10,
              4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: context.colors.outlineVariant,
              ),
            ),
            child: SizedBox(
              width: context.screenWidth - 105,
              height: 100,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const AppRemoteImage(
                    url: 'https://via.placeholder.com/40',
                    width: 56,
                    height: 56,
                  ),
                ),
                title: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.bodyMedium,
                ),
                subtitle: Text(
                  'Indulge in the bold and hoppy gooqweqweqweqwwedness of our...',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyles.bodySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
