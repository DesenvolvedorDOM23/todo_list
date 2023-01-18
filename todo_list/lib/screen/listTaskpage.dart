import 'package:flutter/material.dart';

class ListTaskPage extends StatefulWidget {
  const ListTaskPage({super.key});
  @override
  State<ListTaskPage> createState() => _ListTaskPageState();
}

class _ListTaskPageState extends State<ListTaskPage> {
  List<String> ListTask = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Tarefas "),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 5,
                  );
                },
                padding: const EdgeInsets.all(4),
                itemCount: ListTask.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 45,
                    color: Colors.grey,
                    child: Center(
                        child: Text(
                      ListTask[index],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  );
                },
              ),
            ),
            FloatingActionButton(
              onPressed: (() {
                _nextScreen(context);
              }),
              child: Icon(Icons.add),
            )
          ],
        ));
  }

  void _nextScreen(BuildContext context) async {
    var retorno = await Navigator.of(context).pushNamed('/create');
    setState(() {
      ListTask.add(retorno.toString());
    });
  }
}
