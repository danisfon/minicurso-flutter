import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SomaKK',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Soma'),
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
  final avatar = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://conteudo.imguol.com.br/c/tab/0a/2021/01/14/a-pinscher-celebridade-bica-1610653437088_v2_3x4.jpg'),
    radius: 150,
  );

  final nome = const Text(
    'Pinscher Fofo',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '999785-6525'));
    },
    icon: const Icon(Icons.phone),
    color: Colors.green,
  );

  final botaoEmail = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'pinscher@gmail.com'));
    },
    icon: const Icon(Icons.mail),
    color: Colors.green,
  );

  final botaoSMS = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '999785-6525'));
    },
    icon: const Icon(Icons.sms),
    color: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900],
          title: const Text(
            'Curso de Flutter',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            avatar,
            nome,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [botaoTelefone, botaoEmail, botaoSMS],
            ),
          ],
        ));
  }
}
