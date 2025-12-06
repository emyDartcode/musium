import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.cacheKey,
  });

  final ValueKey? cacheKey;
  final String imageUrl;
  final double? height;
  final double? width;

  bool get _isNetwork => imageUrl.startsWith('http');
  bool get _isFile => File(imageUrl).existsSync();

  @override
  Widget build(BuildContext context) {
    if (_isNetwork) {
      return CachedNetworkImage(
        key: cacheKey,
        imageUrl: imageUrl,
        height: height,
        width: width,
        memCacheHeight: 600,
        memCacheWidth: 600,
        maxWidthDiskCache: 400,
        fadeInDuration: const Duration(milliseconds: 300),
        errorWidget: (context, url, error) =>
            const Icon(Icons.image_not_supported),
      );
    }

    if (_isFile) {
      return Image.file(
        File(imageUrl),
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }

    // Fallback if neither file nor network
    return Container(
      height: height,
      width: width,
      color: Colors.grey.shade300,
      child: const Icon(Icons.image),
    );
  }
}
