import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/01_widget/presentation/component/ingrident_item.dart';

void main() {
  testWidgets('IngridentItem widget test', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: const IngridentItem(
            imageProvider: AssetImage(
              'assets/test_image.png',
            ),
          ),
        ),
      ),
    );

    final tomatosFinder = find.text('Tomatos');
    final gramFinder = find.text('500g');
    final imageFinder = find.byType(Image);

    expect(tomatosFinder, findsOneWidget);
    expect(gramFinder, findsOneWidget);
    expect(imageFinder, findsOneWidget);
  });
}
