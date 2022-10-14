import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AlignmentGeomentryScreen extends StatelessWidget {
  const AlignmentGeomentryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().alignmentgeometry),
      ),
      body: Column(
        children: const [
          Text('data'),
        ],
      ),
    );
  }
}

class AligmentGeo extends AlignmentGeometry {
  @override
  AlignmentGeometry operator %(double other) {
    throw UnimplementedError();
  }

  @override
  AlignmentGeometry operator *(double other) {
    // TODO: implement *
    throw UnimplementedError();
  }

  @override
  AlignmentGeometry operator -() {
    // TODO: implement -
    throw UnimplementedError();
  }

  @override
  AlignmentGeometry operator /(double other) {
    // TODO: implement /
    throw UnimplementedError();
  }

  @override
  Alignment resolve(TextDirection? direction) {
    // TODO: implement resolve
    throw UnimplementedError();
  }

  @override
  AlignmentGeometry operator ~/(double other) {
    // TODO: implement ~/
    throw UnimplementedError();
  }
}
