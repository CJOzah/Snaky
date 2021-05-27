// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';

// import 'direction.dart';

// /// This is the stateful widget that the main application instantiates.
// class KeyboardControls extends StatefulWidget {
//  final void Function(Direction direction) onTapped;

//   const KeyboardControls({Key key, this.onTapped}) : super(key: key);

//   @override
//   _KeyboardControlsState createState() => _KeyboardControlsState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _KeyboardControlsState extends State<KeyboardControls> {
//   // The node used to request the keyboard focus.
//   final FocusNode _focusNode = FocusNode();

// // Focus nodes need to be disposed.
//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

// // Handles the key events from the RawKeyboardListener and update the
// // _message.
//   void _handleKeyEvent(RawKeyEvent event) {
//     setState(() {
//       if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
//         _message = 'Pressed the "Q" key!';
//       } else {
//         if (kReleaseMode) {
//           _message =
//               'Not a Q: Pressed 0x${event.logicalKey.keyId.toRadixString(16)}';
//         } else {
//           // The debugName will only print useful information in debug mode.
//           _message = 'Not a Q: Pressed ${event.logicalKey.debugName}';
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     return Container(
//       color: Colors.white,
//       alignment: Alignment.center,
//       child: DefaultTextStyle(
//         style: textTheme.headline4,
//         child: RawKeyboardListener(
//           focusNode: _focusNode,
//           onKey: _handleKeyEvent,
//           child: AnimatedBuilder(
//             animation: _focusNode,
//             builder: (BuildContext context, Widget child) {
//               if (!_focusNode.hasFocus) {
//                 return GestureDetector(
//                   onTap: () {
//                     FocusScope.of(context).requestFocus(_focusNode);
//                   },
//                   child: const Text('Tap to focus'),
//                 );
//               }
//               return Text(_message ?? 'Press a key');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
