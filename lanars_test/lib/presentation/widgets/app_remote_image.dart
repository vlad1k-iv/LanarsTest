import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';

class AppRemoteImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool matchTextDirection;
  final Color? color;
  final FilterQuality filterQuality;
  final BlendMode? colorBlendMode;
  final Map<String, String>? headers;
  final bool excludeFromSemantics;
  final Widget? placeholder;

  const AppRemoteImage({
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.matchTextDirection = false,
    this.color,
    this.filterQuality = FilterQuality.low,
    this.colorBlendMode,
    this.headers,
    this.excludeFromSemantics = false,
    this.placeholder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      matchTextDirection: matchTextDirection,
      color: color,
      filterQuality: filterQuality,
      colorBlendMode: colorBlendMode,
      errorWidget: (cont, error, _) => Container(
        color: Colors.grey,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey,
        ),
      ),
      placeholder: (_, url) =>
          placeholder ??
          CircularProgressIndicator(
            color: context.colors.primary,
          ),
    );
  }
}
