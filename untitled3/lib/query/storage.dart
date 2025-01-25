import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:image_picker/image_picker.dart';

class AppwriteStorageService {
  final Client _client;
  late final Storage _storage;

  AppwriteStorageService()
      : _client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1') // Replace with your Appwrite endpoint
      .setProject('678dd115000bfb7da92d') // Replace with your Appwrite project ID
  {
    _storage = Storage(_client); // Initialize Appwrite Storage
  }

  /// Uploads a video file to Appwrite Storage.
  Future<String> recordFile(XFile video) async {
    try {
      final File videoFile = File(video.path);
      const String bucketId = '678f8d02000439207cfb'; // Replace with your bucket ID
      final String fileId = 'unique()'; // Let Appwrite generate a unique file ID

      // Upload file to Appwrite Storage
      models.File uploadedFile = await _storage.createFile(
        bucketId: bucketId,
        fileId: fileId,
        file: InputFile.fromPath(path: videoFile.path),
      );

      return 'File uploaded successfully: ${uploadedFile.$id}';
    } catch (e) {
      print(e);
      throw Exception('Error uploading video: $e');
    }
  }
}
