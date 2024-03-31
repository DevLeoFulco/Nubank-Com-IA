import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightMarginTop = MediaQuery.of(context).padding.top;
    final double height = MediaQuery.of(context).size.height - heightMarginTop;
    final double width = MediaQuery.of(context).size.width - heightMarginTop;
    final String titular = 'Leandresson';

    Future setBarsColor(Color navigationBarColor, Color statusBarColor) async {
      await Future.delayed(const Duration(milliseconds: 1));
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: statusBarColor,
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }

    setBarsColor(Colors.black, const Color(0xFF820AD1));

    const TextStyle textStyleTitles = TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);

    final List<Map<dynamic, dynamic>> listActions = [
      {
        "icon": const Icon(
          Icons.pix_outlined,
          color: Colors.black,
        ),
        "title": "Área pix"
      },
      {
        "icon": const Icon(
          Icons.document_scanner_outlined,
          color: Colors.black,
        ),
        "title": "Pagar"
      },
      {
        "icon": const Icon(
          Icons.send_outlined,
          color: Colors.black,
        ),
        "title": "Transferir"
      },
      {
        "icon": const Icon(
          Icons.phone_outlined,
          color: Colors.black,
        ),
        "title": "Recarga de celular"
      },
      {
        "icon": const Icon(
          Icons.message_outlined,
          color: Colors.black,
        ),
        "title": "Cobrar"
      },
      {
        "icon": const Icon(
          Icons.monetization_on_outlined,
          color: Colors.black,
        ),
        "title": "Caixinhas"
      },
      {
        "icon": const Icon(
          Icons.call_received,
          color: Colors.black,
        ),
        "title": "Depositar"
      },
      {
        "icon": const Icon(
          Icons.signal_cellular_alt_rounded,
          color: Colors.black,
        ),
        "title": "Investir"
      },
      {
        "icon": const Icon(
          Icons.language_rounded,
          color: Colors.black,
        ),
        "title": "Transferir Internac."
      },
    ];

    final List<String> listinfos = [
      'O modo escuro ja está disponível no app! Saiba...',
      'Prêmios mensais com Nubank Vida a partir de R\$...',
      'Convide amigos para o Nubank e desbloqueie brasões incríveis.'
    ];

    final List<Map<String, String>> listFindOutMore = [
      {
        'image': "../assets/images/1.jpg",
        'title': "Seguro de vida",
        'description':
            "Cuide bem de quem você ama de um jeito simples e que cabe n...",
        'buttontitle': "Conhecer"
      },
      {
        'image': "../assets/images/2.webp",
        'title': "Indique o Nu para amigos",
        'description': "Espalhe como é simples estar no controle.",
        'buttontitle': "Indicar amigos"
      },
      {
        'image': "../assets/images/3.webp",
        'title': "Portabilidade de salário",
        'description': "Liberdade é como escolher onde receber seu dinheiro.",
        'buttontitle': "Conhecer"
      },
      {
        'image': "../assets/images/4.webp",
        'title': "Pix no crédito",
        'description': "Veja o vídeo para saber tudo sobre essa nova função.",
        'buttontitle': "Conhecer"
      },
      {
        'image': "../assets/images/5.webp",
        'title': "Termos de uso",
        'description': "Explicamos o que diz esse documento do Nubank.",
        'buttontitle': "Conhecer"
      },
    ];

    return (Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: AppBar(
              backgroundColor: const Color(0xFF820AD1),
              elevation: 0,
            )),
        body: SizedBox(
          height: height,
          width: width,
          child: ListView(
            children: [
              Container(
                height: 130,
                padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
                color: const Color(0xFF820AD1),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 155, 47, 228),
                              child: Icon(
                                Icons.add_photo_alternate_outlined,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Icon(
                                Icons.help_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Icon(
                                Icons.person_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
