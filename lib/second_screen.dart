import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class SeconScreen extends StatefulWidget {
  const SeconScreen({super.key});

  @override
  State<SeconScreen> createState() => _SeconScreenState();
}

class _SeconScreenState extends State<SeconScreen> {
  @override
  Widget build(BuildContext context) {
  return MobileScanner(
    // fit: BoxFit.contain,
    controller: MobileScannerController(
      facing: CameraFacing.back,
      torchEnabled: false,
    ),

    onDetect: (capture) {
      final List<Barcode> barcodes = capture.barcodes;
      final Uint8List? image = capture.image;
      for (final barcode in barcodes) {
        debugPrint('Barcode found! ${barcode.rawValue}');
      }
    },
  );
  }
}
