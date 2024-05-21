import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:third_app/backend/mysql_test.dart';
import 'package:third_app/custom_widgets/gradient_text.dart';
import '../pages/home.dart';

class formPage extends StatefulWidget {
  final String email;

  formPage({super.key, required this.email});

  @override
  State<formPage> createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  late TextEditingController _emailFormController;

  final _formKey = GlobalKey<FormState>();
  bool _isVisible = false;

  var db = Mysql();
  var topicName = 'not set';

  @override
  void initState() {
    super.initState();
    _emailFormController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    _emailFormController.dispose();
    super.dispose();
  }

  void _toogleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _getTopics() {
    db.getConnection().then((conn) {
      String sql = "SELECT name FROM topicsGptFlutter.topicsGpt WHERE id = 1;";
      conn.query(sql).then((results) {
        for (var row in results) {
          setState(() {
            topicName = row[0];
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF01244C), Color(0xff1D1617)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home(
                                        title: "home",
                                      )));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Back",
                                style: TextStyle(color: Colors.purpleAccent)),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                  _isVisible
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                _emailFormController.text = "";
                                _toogleVisibility();
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Change Email Again",
                                      style: TextStyle(
                                          color: Colors.purpleAccent)),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: !_isVisible
                    ? Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: GradientText(
                            text: 'Cadastre-se',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                            gradient: LinearGradient(
                              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(top: 35.0, bottom: 35.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color: Colors.blue.shade700,
                                                width: 2)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2))),
                                    validator: (value) {
                                      if ((value == null) || value.isEmpty) {
                                        return 'Entre com email';
                                      }
                                      return null;
                                    },
                                    controller: _emailFormController,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Senha",
                                            hintStyle:
                                                TextStyle(color: Colors.white),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                borderSide: BorderSide(
                                                    color: Colors.blue.shade700,
                                                    width: 2)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2))),
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          if ((value == null) ||
                                              value.isEmpty) {
                                            return 'Entre com senha';
                                          }
                                          return null;
                                        }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            _toogleVisibility();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                              content: Text('Great!'),
                                            ));
                                          }
                                        },
                                        child: const Text('Validate')),
                                  )
                                ],
                              ),
                            )),
                      ])
                    : SizedBox.shrink(),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: _isVisible
                    ? Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFAE67FA), Color(0xFFF49867)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          key: ValueKey<bool>(_isVisible),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Let's expand your experience",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Pick the topics you wish to see $topicName',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getTopics,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
