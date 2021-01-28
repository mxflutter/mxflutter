import 'dart:io';

import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../mx_common.dart';

/// 删除目标文件。
void deleteFile(String filePath) {
  var file = File(filePath);
  file.delete();
}

/// 清空文件夹。
Future clearDirectory(String direct) async {
  await Directory(direct)
      .delete(recursive: true)
      .then((value) => mxLog('clearDirectiory $value'))
      .catchError((err) {
    mxLog('clearDirectiory error: $err');
  });
}

/// 申请权限。
Future<bool> checkPermission() async {
  // 先对所在平台进行判断
  if (Platform.isAndroid) {
    var permission = await Permission.storage.status;
    if (permission != PermissionStatus.granted) {
      PermissionStatus storagePermission = await Permission.storage.request();
      if (storagePermission == PermissionStatus.granted) {
        return true;
      }
    } else {
      return true;
    }
  } else {
    return true;
  }
  return false;
}

/// 获取存储路径。
Future<String> findLocalPath() async {
  // 因为Apple没有外置存储，所以第一步我们需要先对所在平台进行判断。
  // 如果是android，使用getExternalStorageDirectory。低版本先用getTemporaryDirectory
  // 如果是iOS，使用getApplicationDocumentsDirectory。
  final directory = Platform.isAndroid
      ? await getTemporaryDirectory()
      : await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<void> extraFile(String zipPath, String extra2folderPath) async {
  final extra2folder = Directory(extra2folderPath);
  // 判断路径是否存在。
  bool hasExisted = await extra2folder.exists();
  // 不存在就新建路径。
  if (!hasExisted) {
    await extra2folder.create();
  }

  final bytes = await File(zipPath).readAsBytes();

  // Decode the Zip file.
  final archive = ZipDecoder().decodeBytes(bytes);

  // Extract the contents of the Zip archive to disk.
  for (final file in archive) {
    final filename = extra2folderPath + Platform.pathSeparator + file.name;
    if (file.isFile) {
      final data = file.content as List<int>;
      var jsFile = File(filename);
      await jsFile.create(recursive: true);
      await jsFile.writeAsBytes(data);
    } else {
      var dir = Directory(filename);
      await dir.create(recursive: true);
    }
  }
}

// 打印日志
void mxLog(dynamic info) {
  MXJSLog.log('COPY_BUNDLE_ZIP: $info');
}
