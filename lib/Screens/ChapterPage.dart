import 'package:flutter/material.dart';
import 'package:gita/Models/Chapters_Model.dart';
import 'package:gita/Screens/ShlokaPage.dart';

class ChapterPage extends StatefulWidget {
  final int ch;
  final GeetaChapters chapters;

  const ChapterPage({Key key, @required this.ch, @required this.chapters})
      : super(key: key);

  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("अध्याय " + widget.ch.toString()),
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText(widget.chapters.name),
                SelectableText(widget.chapters.translation),
                SelectableText(widget.chapters.meaning.hi),
                SelectableText(widget.chapters.meaning.en),
                SelectableText(widget.chapters.summary.hi),
                SelectableText(widget.chapters.summary.en),
                SizedBox(
                  height: 16.0,
                ),
                Text("All Shloka[श्लोक]",
                    style: TextStyle(fontSize: 32.0, color: Colors.orange)),
                ListView.builder(
                  itemCount: widget.chapters.versesCount,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) {
                                    return ShlokaPage(
                                        sk: index + 1, ch: widget.ch);
                                  }));
                        },
                        trailing: Text("Read [ पढे ]"),
                        title: Text("श्लोक  - " + (index + 1).toString()));
                  },
                ),
                Image(
                  image: AssetImage("images/3.png"),
                )
              ],
            ),
          )),
    );
  }
}
