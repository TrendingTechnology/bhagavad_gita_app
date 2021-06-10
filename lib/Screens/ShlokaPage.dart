import 'package:flutter/material.dart';
import 'package:gita/Methods/Methods.dart';
import 'package:gita/Models/Shloka_Model.dart';

class ShlokaPage extends StatefulWidget {
  final int sk;
  final int ch;

  const ShlokaPage({Key key, @required this.sk, @required this.ch})
      : super(key: key);

  @override
  _ShlokaPageState createState() => _ShlokaPageState();
}

class _ShlokaPageState extends State<ShlokaPage> {
  GeetaShloka _shloka;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Methods.getGeetaShloka(widget.ch, widget.sk).then((geetaShloka) {
      setState(() {
        _shloka = geetaShloka;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(_loading ? 'Loading...' : "श्लोक " + _shloka.verse.toString() ),
      ),
      body: Container(
          alignment: Alignment.center,
          child: _loading
              ? Center(
                  child: SizedBox(
                    height: 80.0,
                    width: 80.0,
                    child: CircularProgressIndicator(
                    backgroundColor:  Colors.deepPurple,
                      strokeWidth: 4.0,
                    ),
                  ),
                )
              : Container(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectableText(
                        _shloka.slok == null
                            ? "not Available"
                            : _shloka.slok,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.orange, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      SelectableText(_shloka.chinmay.hc == null
                          ? "not Available"
                          : _shloka.chinmay.hc),
                      SizedBox(
                        height: 16.0,
                      ),
                      Image(
                        image: AssetImage("images/2.png"),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
