import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:movies/ui/RepeatedFunction/searchbarfunc.dart';

void main() {
  testWidgets('searchlistfunction test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: searchbarfun(),
      ),
    );

    final searchbarState =
        tester.state<searchbarfunState>(find.byType(searchbarfun));
    await searchbarState.searchlistfunction('wonka');

    expect(searchbarState.searchresult, isNotEmpty);
  });
}
