import 'package:flutter/material.dart';

// Define a mixin for logging
mixin LoggingMixin on StatefulWidget {
  void log(String message) {
    print('Logging: $message');
  }
}

// Create a StatefulWidget that uses the LoggingMixin
class LoggingWidget extends StatefulWidget with LoggingMixin {
  @override
  _LoggingWidgetState createState() => _LoggingWidgetState();
}

class _LoggingWidgetState extends State<LoggingWidget> {
  @override
  Widget build(BuildContext context) {
    // Use the log method from the mixin
    widget.log('Widget is being built');

    return Center(
      child: Text('Logging Example'),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: LoggingWidget(),
    ),
  );
}
