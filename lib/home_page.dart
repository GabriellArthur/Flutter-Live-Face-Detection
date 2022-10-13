import 'package:app/face_detector_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Face Detector'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: SizedBox(
        width: 350,
        height: 80,
        child: OutlinedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(
                  color: Colors.blue, width: 1.0, style: BorderStyle.solid),
            ),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FaceDetectorPage(),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIconWidget(Icons.arrow_forward_ios),
              const Text(
                'Go to Face Detector',
                style: TextStyle(fontSize: 24),
              ),
              _buildIconWidget(Icons.arrow_back_ios),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWidget(final IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(
        icon,
        size: 24,
      ),
    );
  }
}
