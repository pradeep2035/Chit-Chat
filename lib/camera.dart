import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late List<CameraDescription> cameras;
  late CameraController _cameraController;
  int direction =0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction ) async {
    cameras = await availableCameras();

    _cameraController =
        CameraController(cameras[direction], ResolutionPreset.high, enableAudio: false);

    await _cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {}); // to refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController.value.isInitialized) {
      return Scaffold(
        body: Stack(children: [
          CameraPreview(_cameraController),
          GestureDetector(
            onTap: () {
              setState(() {
                direction = direction == 0? 1 :0;
                startCamera(direction);
              });
            },
            child: button(
                Icons.flip_camera_android_outlined, Alignment.bottomLeft),
          ),
          button(Icons.camera_alt_outlined, Alignment.bottomCenter),
          GestureDetector(
            onTap: () {
              _cameraController.takePicture().then((XFile? file) {
                if (mounted) {
                  if (file != null) {
                    print("Picture saved to ${file.path}");
                  }
                }
              });
            },
            child: button(Icons.camera_alt_outlined, Alignment.bottomCenter),
          ),
        ]),
      );
    } else {
      return const SizedBox();
    }
  }
}

Widget button(IconData icon, Alignment alignment) {
  return Align(
    alignment: alignment,
    child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 20),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 10,
              ),
            ]
            ),
        child: Center(
            child: Icon(
              icon,
              color: Colors.black,
            )
            )
            ),
  );
}
