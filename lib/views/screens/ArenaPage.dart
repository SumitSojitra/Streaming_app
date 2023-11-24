import 'package:flutter/material.dart';
import 'package:my/views/components/globals/globals.dart';

class ArenaPage extends StatefulWidget {
  const ArenaPage({super.key});

  @override
  State<ArenaPage> createState() => _ArenaPageState();
}

class _ArenaPageState extends State<ArenaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.bg,
    );
  }
}
