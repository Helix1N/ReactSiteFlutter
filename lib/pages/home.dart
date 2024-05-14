import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../custom_widgets/gradient_text.dart';

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
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
                fontWeight: FontWeight.w400,
                fontSize: 16,
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
                fontWeight: FontWeight.w400,
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
                fontWeight: FontWeight.w700,
                fontSize: 25,
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
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/people.png',
                  height: 30,
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
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
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
                    text: 'As possibilidades são além \nda sua imaginação',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),
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
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
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
                            style: TextStyle(color: Colors.white.withOpacity(0.7)),
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
                            style: TextStyle(color: Colors.white.withOpacity(0.7)),
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
                            style: TextStyle(color: Colors.white.withOpacity(0.7)),
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
      child: Column(
        children: [
          SizedBox(height: 90,),
        ],
      ),
    );
  }
}
