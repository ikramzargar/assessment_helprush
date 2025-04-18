import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonLoader extends StatelessWidget {
  const SkeletonLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Card(
        child: ListTile(
          title: Text(
            'Sample title for skeletonizer',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('This is a sample body for skeletonizer widget.'
              'it makes loading look really beautifull and smooth'
              'There is another way of adding skeleton effect'
              'it is the shimmer package'
              'but skeletonizer is easy to use'),
        ),
      ),
    ));
  }
}
