import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _medicoes = [
    'PESO MEDIDO 1',
    'PESO MEDIDO 2',
    'PESO MEDIDO 3',
    'PESO MEDIDO 4',
    'PESO MEDIDO 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Balança IoT"),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Medição',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'PESO MEDIDO',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Média',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'PESO MÉDIO',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Histórico de Medições',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(
                              height: 1,
                            ),
                            itemCount: _medicoes.length,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Text(
                                  _medicoes[index],
                                  style: const TextStyle(fontSize: 16),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
