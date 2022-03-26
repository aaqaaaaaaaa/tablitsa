import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1.0, color: Colors.grey),
                            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Text(
                          'Sana',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1.0, color: Colors.grey),
                            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 4,
                        child: const Text(
                          'Joy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: const Text(
                          'Summa',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: midel.length,
                    itemBuilder: (context, index) {
                      return Tablitsa(
                          c1: midel[index].sana,
                          c2: midel[index].summa,
                          c3: midel[index].joy,
                          context: context);
                    }),
              ],
            ),
          ),
        ]));
  }
}

Widget Tablitsa(
    {required String c1,
    required int c2,
    required String c3,
    required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: Colors.grey),
              // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
            ),
          ),
          width: MediaQuery.of(context).size.width / 3,
          child: Text(c1),
        ),
        Container(
          height: MediaQuery.of(context).size.width / 10,
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: Colors.grey),
              // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
            ),
          ),
          width: MediaQuery.of(context).size.width / 4,
          child: Text('$c2'),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 4,
          child: Text(c3),
        ),
      ],
    ),
  );
}

class Midel {
  final String sana, joy;
  final int summa;

  const Midel({
    required this.summa,
    required this.joy,
    required this.sana,
  });
}

List<Midel> midel = [
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500900, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500043, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50003, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50004, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 50005, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 5000, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500044, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),
  const Midel(summa: 500055, joy: 'Shaffof', sana: '12.30.1122 12:30:20:20'),

];
