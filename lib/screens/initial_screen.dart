import 'package:first_app/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      // ignore: avoid_unnecessary_containers
      body: AnimatedOpacity(
        duration: const Duration(
          milliseconds: 800,
        ),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          children: const [
            Task('Aprender Flutter', 'assets/images/task_image.png', 4),
            Task('Ouro no Valorant', 'assets/images/task_image.png', 5),
            Task('Terminar os Cursos', 'assets/images/task_image.png', 4),
            Task('Melhorar o PC', 'assets/images/task_image.png', 4),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(
          Icons.remove_red_eye,
        ),
      ),
    );
  }
}
