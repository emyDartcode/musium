import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.cacheKey
  });
  final ValueKey? cacheKey;
  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return CachedNetworkImage(
      key: cacheKey,
      imageUrl: imageUrl,
      height: height,
      width: width,
      memCacheHeight: (height * pixelRatio * 1.5).round(),
      memCacheWidth: (width * pixelRatio * 1.5).round(),
      maxWidthDiskCache: 400,
      fadeInDuration: const Duration(milliseconds: 300),
      errorWidget: (context, url, error) => const Icon(
        Icons.image,
        size: 15
      ),

    );
  }
}