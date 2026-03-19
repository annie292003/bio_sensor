import 'package:flutter/material.dart';

class SeleccionRol extends StatelessWidget {
  final String appId;
  final String? invernaderoIdFromLink;

  const SeleccionRol({
    super.key,
    required this.appId,
    this.invernaderoIdFromLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selección de rol'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pantalla temporal de Selección de Rol',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'appId: $appId',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'invernaderoIdFromLink: ${invernaderoIdFromLink ?? "sin link"}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}