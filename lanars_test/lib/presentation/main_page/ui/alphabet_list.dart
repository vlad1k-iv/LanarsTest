import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/domain/model/models.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/widgets/app_remote_image.dart';

class AlphabetList extends StatelessWidget {
  const AlphabetList({
    required this.photos,
    super.key,
  });

  final List<PhotographerModel> photos;

  @override
  Widget build(BuildContext context) {
    if (photos.isNotEmpty) {
      return SizedBox(
        width: context.screenWidth - 32,
        child: Scrollbar(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final item = photos[index];
              return Row(
                children: [
                  _buildListItem(
                    item,
                    context,
                  ),
                ],
              );
            },
          ),
        ),
      );
    } else {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64),
          child: Text(
            'No item found',
            style: TextStyles.titleMedium.apply(
              color: context.colors.secondary,
            ),
          ),
        ),
      );
    }
  }

  Widget _buildListItem(
    PhotographerModel model,
    BuildContext context,
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
            child: model.isHeader
                ? Text(model.name[0].toUpperCase(),
                    style: TextStyles.titleSmall)
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
                  child: AppRemoteImage(
                    url: model.image,
                    width: 56,
                    height: 56,
                  ),
                ),
                title: Text(
                  model.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.bodyMedium,
                ),
                subtitle: Text(
                  model.description,
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
