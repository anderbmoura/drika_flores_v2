import 'package:drika_flores/services/api-service/api-service.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
  requestTeste();
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

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(221, 211, 238, 1.0),
              Color.fromRGBO(230, 224, 236, 1.0),
            ],
          ),
        ),
        child:       Center(
          child: ElevatedButton(
            child: Text('Ir para a Segunda Página'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation, secondaryAnimation) => SecondPage(),
              //     transitionsBuilder: (context, animation,
              //         secondaryAnimation, child) {
              //   const begin = Offset(1.0, 0.0);
              //   const end = Offset.zero;
              //   const curve = Curves.easeInOut;
              //
              //   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              //
              //   var offsetAnimation = animation.drive(tween);
              //
              //   return SlideTransition(
              //   position: offsetAnimation,
              //   child: child,
              //
              //   );
              //   },
              //   ),
              // );

            },
          ),
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

requestTeste() async {
  final baseUrl = ApiService(); // Substitua pela sua URL base

  try {
    final data = await baseUrl.get('v1/merchant');
    print(data);

    // final newData = {'title': 'Novo post', 'body': 'Conteúdo do novo post', 'userId': 1};
    // final createdPost = await baseUrl.post('/posts', newData);
    // print('Post ok, $createdPost');
  } catch (e) {
    print('Erro na requisição: $e');
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