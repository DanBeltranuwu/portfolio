import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchExternalUri(BuildContext context, Uri uri) async {
  final launched = await launchUrl(uri, webOnlyWindowName: '_blank');

  if (!launched && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Unable to open the selected link.')),
    );
  }
}
