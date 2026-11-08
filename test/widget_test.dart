import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:roll_the_dice/main.dart';

void main() {
  testWidgets('shows a dice image and rolls on tap', (tester) async {
    await tester.pumpWidget(const RollTheDiceApp());
    expect(find.byType(Image), findsOneWidget);

    await tester.tap(find.text('Roll Dice'));
    await tester.pump();
    expect(find.byType(Image), findsOneWidget);
  });
}
