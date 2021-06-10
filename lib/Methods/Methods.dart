import 'package:gita/Models/Chapters_Model.dart';
import 'package:gita/Models/Shloka_Model.dart';
import 'package:http/http.dart' as http;

class Methods {
  static const String baseUrl = "bhagavadgitaapi.in";

  static Future<List<GeetaChapters>> getGeetaChapters() async {
    var url = Uri.parse(
        'https://bhagavadgitaapi.in/chapters?api_key="YOUR_API_KEY"');
    try {
      final response = await http.get(
        url,
      );
      if (200 == response.statusCode) {
        final List<GeetaChapters> users = geetaChaptersFromJson(response.body);
        return users;
      } else {
        return <GeetaChapters>[];
      }
    } catch (e) {
      return <GeetaChapters>[];
    }
  }

  static Future<GeetaShloka> getGeetaShloka(int ch, int sk) async {
    var url = Uri.parse(
        'https://bhagavadgitaapi.in/slok/$ch/$sk?api_key="YOUR_API_KEY"');
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final GeetaShloka shloka = geetaShlokaFromJson(response.body);
        return shloka;
      } else {
        return GeetaShloka();
      }
    } catch (e) {
      return GeetaShloka();
    }
  }
}
