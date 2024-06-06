import 'package:flutter/material.dart';

class DisplayArguments {
  final String email;
  final String password;

  DisplayArguments(this.email, this.password);
}

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DisplayArguments args =
        ModalRoute.of(context)!.settings.arguments as DisplayArguments;

    return Scaffold(
      appBar: AppBar(title: Text('Display Data')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Entered Email: ${args.email}'),
            Text('Entered Password: ${args.password}'),
          ],
        ),
      ),
    );
  }
}
