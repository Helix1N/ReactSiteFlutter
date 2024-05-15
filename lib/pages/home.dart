import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../custom_widgets/gradient_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(children: [
        _heroSection(),
        _brandsSection(),
        _possibiliesSection(),
        _futureSection(),
        _googlyEyesSection(),
        _gradientBoxSection(),
        _blogSection(),
        _footerSection(),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  AppBar _appBar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF01244C), Color(0xff1D1617)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Image.asset('assets/images/openai-gpt-3.png'),
      ),
      title: Row(
        children: [
          Text(
            'GPT-3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          Spacer(), // This pushes the 'actions' to the right end
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            alignment: Alignment.center,
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFFF4820),
            ),
            alignment: Alignment.center,
            child: Text(
              'Registrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _heroSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF01244C), Color(0xff1D1617)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
            ),
            child: GradientText(
              text: 'Vamos construir algo \nincrível com GPT-3 OpenAI',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 27,
                color: Colors.white,
              ),
              gradient: LinearGradient(
                colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          filled: true,
                          fillColor: Color(0xFF031B34),
                          hintText: 'Seu email',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 0.0,
                      )
                    ],
                    color: Color(0xFFFF4820),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Text(
                    'Começar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 0.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/people.png',
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '560.000+ pessoas registradas',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/ai.png')
        ],
      ),
    );
  }

  Container _brandsSection() {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF040C18)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/google.png'),
                Image.asset('assets/images/slack.png'),
                Image.asset('assets/images/shopify.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/atlassian.png'),
                Image.asset('assets/images/dropbox.png'),
              ],
            ),
          ),
          SizedBox(
            height: 75,
          ),
        ],
      ),
    );
  }

  Container _possibiliesSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF040C18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40),
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-0.15, -1.0), // near the top right
              radius: 1.6,
              colors: [
                Color(0xFF042C54),
                Color(0xFF186FCE),
              ],
              stops: [0.3, 1.0],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0,right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                Text(
                  'O Que é GPT-3',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod ',
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: GradientText(
                    text: 'As possibilidades são além da sua imaginação',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    gradient: LinearGradient(
                      colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                Text(
                  'Explore a livraria',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Text(
                          'Chat de Bots',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod ',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Text(
                          'Base de Conhecimentos',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod ',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Text(
                          'Educação',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod ',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _futureSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF040C18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            GradientText(
              text:
              'O Futuro É Agora, Você Só\nPrecisa Perceber. Entre no\nFuturo Agora e Faça Acontecer.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
              gradient: LinearGradient(
                colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
              child: Text(
                'Peça o Early Access para Começar',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            buildInfoRow(
              'Melhoras acabam\ncom falta de\nconfiança',
              'Lorem ipsum dolor sit amet, consecteturadipi elit, sed do eiusmod tempor',
            ),
            buildInfoRow(
              'Torne-se mais ativo\ne produtivo',
              'Lorem ipsum dolor sit amet, consecteturadipi elit, sed do eiusmod tempor',
            ),
            buildInfoRow(
              'Mais velocidade e\nmelhores\nconstruções',
              'Lorem ipsum dolor sit amet, consecteturadipi elit, sed do eiusmod tempor',
            ),
            buildInfoRow(
              'Mensagens\ndinâmicas com a\nequipe',
              'Lorem ipsum dolor sit amet, consecteturadipi elit, sed do eiusmod tempor',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            child: Text(
              description,
              style: TextStyle(
                color: Color(0xFF7DAAD6),
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }


  Container _googlyEyesSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF040C18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset('assets/images/possibility.png'),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Peça o Early Access para Começar',
                style: TextStyle(
                    color: Color(0xFF7DAAD6),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            GradientText(
              text: 'As possibilidades são\nalém da sua imaginação',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              gradient: LinearGradient(
                colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore m',
                style: TextStyle(
                  color: Color(0xFF7DAAD6),
                ),
              ),
            ),
            Text(
              'Peça o Early Access para Começar',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _gradientBoxSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF040C18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 40, left: 40.0, right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Peça o Early Access para Começar',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                ),
                Text('Resgistre-se hoje & começe explorando as infinitas possibilidades',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,

                ),),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        border: Border(
                          top: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          left: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15, right: 40, left: 40),
                        child: Text('Começar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,

                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Container _blogSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF040C18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            GradientText(text:'Muito está acontecendo, estamos conversando sobre',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 15),
              child: Column(
                    children: [
                      Image.asset('assets/images/blog02.png'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF031B34),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('May 2, 2024',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                                ),),
                                Text(
                                  'GPT-3 e Open AI são o futuro. Vamos explorar, que tal?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 50,),
                                Text(
                                    'Leia Artigo Completo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/blog01.png',),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF031B34),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('May 2, 2024',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                  ),),
                                Text(
                                  'GPT-3 e Open AI são o futuro. Vamos explorar, que tal?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 50,),
                                Text(
                                  'Leia Artigo Completo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/blog03.png',),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF031B34),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('May 2, 2024',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                  ),),
                                Text(
                                  'GPT-3 e Open AI são o futuro. Vamos explorar, que tal?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 50,),
                                Text(
                                  'Leia Artigo Completo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
          ],
        ),
      ),
    );
  }
  Container _footerSection() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF031B34),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            GradientText(text: 'Você quer entrar no\nfuturo antes dos outros?',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                gradient: LinearGradient(
                  colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0,bottom: 50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15, left: 15, right: 15),
                  child: Text(
                    'Peça o Early Access',style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/logo.svg'),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 20),
                    child: Text('Crechterwoord K12 182 DK Alknjkcb,\nAll Rights Reserved',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    )),
                  ),
                  Text(
                      'Links',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Overons',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Social Media',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Counters',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Contact',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                        'Company',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Contact',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                        'Get in Touch',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'Crechterwoord K12 182 DK Alknjkcb',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        '085-132567',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                        'info@payme.net',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text('@ 2024 GPT-3. All rights reserved.',
              style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
