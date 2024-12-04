import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:codigo_de_barras/main.dart'; // Asegúrate de que la ruta del archivo sea correcta

void main() {
  testWidgets('Escanea QR y Código de Barras', (WidgetTester tester) async {
    // Construye la aplicación y dispara un fotograma.
    await tester.pumpWidget(MyApp());

    // Verifica que la app contiene el texto "Escanear QR/Código de Barras".
    expect(find.text('Escanear QR/Código de Barras'), findsOneWidget);

    // Simula un tap en el botón de escaneo.
    await tester.tap(find.text('Escanear QR/Código de Barras'));
    await tester.pump();

    // Aquí puedes agregar más lógica para simular el resultado del escaneo.
    // Esto depende de cómo manejes el escaneo en tu aplicación.
  });
}
