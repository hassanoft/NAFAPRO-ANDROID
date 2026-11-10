import 'package:flutter_test/flutter_test.dart';
import 'package:nafapro/src/app.dart';

void main() {
  testWidgets('NAFAPRO affiche son tableau de bord', (tester) async {
    await tester.pumpWidget(const NafaProApp());

    expect(find.text('NAFAPRO'), findsOneWidget);
    expect(find.text('Bonjour 👋'), findsOneWidget);
    expect(find.text('Vue d’ensemble'), findsOneWidget);
  });
}
