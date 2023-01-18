// ignore: file_names
import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});
  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController createTaskController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar tarefas"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.all(8)),
          TextFormField(
            controller: createTaskController,
            validator: ((value) {
              if (value == null || value.isEmpty) {
                return "Obrigatório";
              }
              return null;
            }),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (() {
              if (_formKey.currentState!.validate()) {
                print(createTaskController.text);
                _ReturnScreen(context);
              }
            }),
            child: Text("Salvar"),
          ),
        ]),
      ),
    );
  }

  void _ReturnScreen(BuildContext context) async {
    Navigator.pop(context, createTaskController.text);
  }
}
