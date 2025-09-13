abstract interface class ClipboardService {
  Future<void> copyToClipboard(String text);

  Future<String?> getText();
}
