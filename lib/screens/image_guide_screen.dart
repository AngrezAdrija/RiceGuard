import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageGuideScreen extends StatefulWidget {
  final bool useCamera;

  const ImageGuideScreen({
    super.key,
    required this.useCamera,
  });

  @override
  State<ImageGuideScreen> createState() => _ImageGuideScreenState();
}

class _ImageGuideScreenState extends State<ImageGuideScreen> {

  File? image;

  bool ready = false;

  Future<void> pickImage() async {

    final picker = ImagePicker();

    final pickedImage = await picker.pickImage(

      source: widget.useCamera
          ? ImageSource.camera
          : ImageSource.gallery,

      imageQuality: 90,

    );

    if (pickedImage == null) return;

    setState(() {

      image = File(pickedImage.path);

    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          widget.useCamera
              ? "Capture Plant Image"
              : "Upload Plant Image",
        ),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Center(

              child: Icon(

                widget.useCamera
                    ? Icons.camera_alt
                    : Icons.photo_library,

                size: 80,

                color: Colors.green,

              ),

            ),

            const SizedBox(height: 20),

            const Center(

              child: Text(

                "Before You Continue",

                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),

              ),

            ),

            const SizedBox(height: 25),

            buildRule(
              Icons.filter_1,
              "Capture only ONE rice leaf.",
            ),

            buildRule(
              Icons.wb_sunny,
              "Take the photo in natural daylight.",
            ),

            buildRule(
              Icons.center_focus_strong,
              "Keep the leaf in the centre of the frame.",
            ),

            buildRule(
              Icons.zoom_in,
              "Move closer until the leaf fills most of the screen.",
            ),

            buildRule(
              Icons.blur_off,
              "Avoid blurry images.",
            ),

            buildRule(
              Icons.image,
              "Use a plain background if possible.",
            ),

            buildRule(
              Icons.pan_tool_alt,
              "Do not cover the leaf with your fingers.",
            ),

            const SizedBox(height: 20),

            CheckboxListTile(

              value: ready,

              title: const Text(
                "I am ready to continue.",
              ),

              onChanged: (value) {

                setState(() {

                  ready = value!;

                });

              },

            ),

            const SizedBox(height: 20),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton.icon(

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.green,

                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),

                ),

                onPressed: ready
                    ? pickImage
                    : null,

                icon: Icon(
                  widget.useCamera
                      ? Icons.camera_alt
                      : Icons.photo_library,
                  color: Colors.white,
                ),

                label: Text(

                  widget.useCamera
                      ? "Start Camera"
                      : "Open Gallery",

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                ),

              ),

            ),

            const SizedBox(height: 30),

            if (image != null) ...[

              const Divider(),

              const SizedBox(height: 20),

              const Center(

                child: Text(

                  "Selected Image",

                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),

                ),

              ),

              const SizedBox(height: 20),

              Center(

                child: Image.file(

                  image!,

                  height: 300,

                ),

              ),

              const SizedBox(height: 25),

              Row(

                children: [

                  Expanded(

                    child: ElevatedButton.icon(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: pickImage,

                      icon: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),

                      label: Text(

                        widget.useCamera
                            ? "Retake"
                            : "Choose Again",

                        style: const TextStyle(
                          color: Colors.white,
                        ),

                      ),

                    ),

                  ),

                  const SizedBox(width: 15),

                  Expanded(

                    child: ElevatedButton.icon(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),

                      onPressed: () {

                        ScaffoldMessenger.of(context).showSnackBar(

                          const SnackBar(

                            content: Text(
                              "Image analysis will be added soon.",
                            ),

                          ),

                        );

                      },

                      icon: const Icon(
                        Icons.analytics,
                        color: Colors.white,
                      ),

                      label: const Text(

                        "Analyze",

                        style: TextStyle(
                          color: Colors.white,
                        ),

                      ),

                    ),

                  ),

                ],

              ),

            ]

          ],

        ),

      ),

    );

  }

  Widget buildRule(IconData icon, String text) {

    return Padding(

      padding: const EdgeInsets.only(bottom: 15),

      child: Row(

        children: [

          Icon(
            icon,
            color: Colors.green,
          ),

          const SizedBox(width: 12),

          Expanded(

            child: Text(

              text,

              style: const TextStyle(
                fontSize: 17,
              ),

            ),

          ),

        ],

      ),

    );

  }

}