import 'package:flutter/material.dart';
import 'package:flutter_demo_plugin/flutter_demo_plugin.dart';

class PlatformVersion extends StatefulWidget {
  const PlatformVersion({super.key});

  @override
  State<PlatformVersion> createState() => _PlatformVersionState();
}

class _PlatformVersionState extends State<PlatformVersion> {
  String? _platformVersion;

  @override
  void initState() {
    super.initState();

    setState(() {
      FlutterDemoPlugin()
          .getPlatformVersion()
          .then((value) => _platformVersion = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Running on: $_platformVersion',
      style: const TextStyle(fontSize: 14),
    );
  }
}
