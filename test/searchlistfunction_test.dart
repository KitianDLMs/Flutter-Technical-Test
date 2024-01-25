import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:movies/ui/RepeatedFunction/searchbarfunc.dart';

void main() {
  testWidgets('searchlistfunction test', (WidgetTester tester) async {
    // Crea una instancia del widget
    final searchbar = searchbarfun();

    // Monta el widget
    await tester.pumpWidget(
      MaterialApp(
        home: searchbar,
      ),
    );

    // Accede al estado del widget
    final searchbarState =
        tester.state<searchbarfunState>(find.byType(searchbarfun));

    // Llama a la función en el estado
    await searchbarState.searchlistfunction('wonka');

    // Assert
    expect(searchbarState.searchresult, isNotEmpty);
  });
}
