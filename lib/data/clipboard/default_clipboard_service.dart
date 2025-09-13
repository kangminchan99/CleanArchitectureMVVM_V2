import 'package:cleanarchitecture_v2/domain/clipboard/clipboard_service.dart';
import 'package:flutter/services.dart';

class DefaultClipboardService implements ClipboardService {
  @override
  Future<void> copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }

  @override
  Future<String?> getText() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    return data?.text;
  }
}
