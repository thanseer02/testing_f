import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
class Dio extends StatefulWidget {
  const Dio({super.key});

  @override
  State<Dio> createState() => _DioState();
}

class _DioState extends State<Dio> {
  final TextEditingController _ctrl=TextEditingController();
  final _channel=WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.events'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 100.0,horizontal: 10),
      child: Column(
        children: [
          TextFormField(
            controller: _ctrl,
            decoration: InputDecoration(
              labelText: 'Send a message'
            ),
          ),
          SizedBox(
            height: 20,
          ),
          StreamBuilder(stream: _channel.stream,
              builder: (context,snapshot){
              return Text(snapshot.hasData? '${snapshot.data}':'');
              }
              )
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: Icon(Icons.send),
      ),
    );
  }
  void _sendMessage(){
    if(_ctrl.text.isNotEmpty){
      _channel.sink.add(_ctrl.text);
    }
  }
  @override
  void dispose(){
    _channel.sink.close();
    _ctrl.dispose();
    super.dispose();
  }
}
