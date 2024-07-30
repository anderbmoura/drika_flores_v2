import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    initialRoute: '/',
    routes: {
        '/': (context) => FirstPage(),
      '/second': (context) => SecondPage()
    },
    //   home: Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         begin: Alignment.topCenter,
    //         end: Alignment.bottomCenter,
    //         colors: [
    //           Color.fromRGBO(221, 211, 238, 1.0),
    //           Color.fromRGBO(230, 224, 236, 1.0),
    //         ],
    //       ),
    //     ),
    // child: Center( // Centraliza o conteúdo do Container
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: <Widget>[
    //         ElevatedButton(
    //           style: const ButtonStyle(
    //             backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(145, 85, 255, 1.0))
    //           ),
    //             onPressed: () {
    //               //TODO
    //             },
    //           child: const Text(
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 18
    //               ),
    //               'Elevated'
    //           ),
    //             )
    //       ],
    //     ),
    //   ),
    //   )
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira tela'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a Segunda Página'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a Primeira Página'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// home: Container(
// // Adicione restrições de tamanho se necessário
// child: Center( // Centraliza o conteúdo do Container
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// ElevatedButton(
// onPressed: () {
// // Adicione a ação que você deseja realizar ao pressionar o botão
// print('Botão pressionado!');
// },
// child: Text('Elevated'),
// ),
// // Adicione outros widgets aqui se desejar
// ],
// ),
// ),
// ),