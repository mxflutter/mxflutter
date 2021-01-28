class MXModuleInitPermissioResult {
  /// 是否成功。
  final bool reslut;

  /// 错误信息。
  final String errorMessage;

  MXModuleInitPermissioResult(this.reslut, this.errorMessage);
}

class MXBundleZipCheckResult {
  /// 是否成功。
  final bool success;

  /// bundle包放置路径。
  final String bundlePath;

  /// 错误信息。
  final String errorMessage;

  MXBundleZipCheckResult(this.success, this.bundlePath, this.errorMessage);
}

class MXCopyBundleZipInfo {
  /// js资源下载路径
  final String jsBunldeDownloadPath;

  MXCopyBundleZipInfo({this.jsBunldeDownloadPath});
}
