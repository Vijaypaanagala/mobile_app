// import 'package:flutter/material.dart';

// class Thepose extends StatelessWidget {
//   const Thepose({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               width: 100,
//               height: 50,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                 image: AssetImage('images/mic.png'),
//               )),
//             ),
//             Container(
//               width: 600,
//               height: 500,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                 image: AssetImage('images/posedet.png'),
//               )),
//             ),
//             Container(
//               width: 200,
//               height: 100,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                 image: AssetImage('images/record.png'),
//               )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class Thepose extends StatefulWidget {
//   const Thepose({super.key});

//   @override
//   _TheposeState createState() => _TheposeState();
// }

// class _TheposeState extends State<Thepose> {
//   CameraController? _controller;
//   Future<void>? _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     // Obtain a list of the available cameras on the device.
//     final cameras = await availableCameras();
//     // Get a specific camera from the list of available cameras.
//     final firstCamera = cameras.first;

//     // Initialize the controller with the camera and resolution.
//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.high,
//     );

//     // Initialize the controller.
//     _initializeControllerFuture = _controller!.initialize();
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed.
//     _controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Real-Time Camera'),
//         backgroundColor: Colors.black,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       backgroundColor: Colors.black,
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             // If the Future is complete, display the camera preview.
//             return CameraPreview(_controller!);
//           } else {
//             // Otherwise, display a loading indicator.
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }

// import 'dart:convert';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Thepose extends StatefulWidget {
  const Thepose({super.key});

  @override
  _TheposeState createState() => _TheposeState();
}

class _TheposeState extends State<Thepose> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  String poseResult = '';

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller!.initialize();
    setState(() {});
  }

  Future<void> _sendFrameToServer() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    // Capture the frame
    final XFile file = await _controller!.takePicture();
    final Uint8List imageBytes = await file.readAsBytes();

    // Send the image to the backend
    final response = await http.post(
      Uri.parse('http://<YOUR_SERVER_IP>:5000/pose'),
      headers: {"Content-Type": "multipart/form-data"},
      body: {
        'image': MultipartFile.fromBytes('image', imageBytes),
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        poseResult = response.body;
      });
    } else {
      setState(() {
        poseResult = 'Error in pose detection';
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-Time Camera'),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Expanded(
                  child: CameraPreview(_controller!),
                ),
                ElevatedButton(
                  onPressed: _sendFrameToServer,
                  child: const Text('Detect Pose'),
                ),
                Text(
                  poseResult,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
