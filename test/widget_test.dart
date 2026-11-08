import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:f6_congviec/main.dart';

void main() {
  testWidgets('Tap add and then cancel dialog test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Tap '+' FAB to open dialog
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text('Thêm công việc'), findsOneWidget);

    // Tap 'Hủy' button in dialog
    await tester.tap(find.text('Hủy'));
    await tester.pumpAndSettle();

    expect(find.text('Thêm công việc'), findsNothing);
  });

  testWidgets('Tap add and submit task test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Tap '+' FAB to open dialog
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Enter text
    await tester.enterText(find.byType(TextFormField), 'Việc mới test');
    await tester.pumpAndSettle();

    // Tap 'Thêm' button
    await tester.tap(find.text('Thêm'));
    await tester.pumpAndSettle();

    expect(find.text('Việc mới test'), findsOneWidget);
  });

  testWidgets('Dismissible swipe to delete task test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Nộp bài Lab A11'), findsOneWidget);

    // Swipe left to dismiss 'Nộp bài Lab A11'
    await tester.drag(find.text('Nộp bài Lab A11'), const Offset(-500, 0));
    await tester.pumpAndSettle();

    expect(find.text('Nộp bài Lab A11'), findsNothing);
    expect(find.text('Đã xóa "Nộp bài Lab A11"'), findsOneWidget);
  });
}


