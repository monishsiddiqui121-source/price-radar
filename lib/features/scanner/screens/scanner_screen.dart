import 'dart:io';

import 'package:flutter/material.dart';

import '../services/image_picker_service.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final ImagePickerService _pickerService = ImagePickerService();

  File? selectedImage;

  Future<void> pickFromGallery() async {
    final image = await _pickerService.pickScreenshot();

    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  Future<void> pickFromCamera() async {
    final image = await _pickerService.capturePhoto();

    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screenshot Scanner"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: selectedImage == null
                    ? const Center(
                        child: Text(
                          "No Screenshot Selected",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(
                          selectedImage!,
                          fit: BoxFit.contain,
                        ),
                      ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: pickFromGallery,
                icon: const Icon(Icons.photo_library),
                label: const Text("Pick Screenshot"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: pickFromCamera,
                icon: const Icon(Icons.camera_alt),
                label: const Text("Open Camera"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: selectedImage == null
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "AI Scanner Coming Next 🚀",
                            ),
                          ),
                        );
                      },
                icon: const Icon(Icons.auto_awesome),
                label: const Text("Scan Product"),
              ),
            ),

            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}