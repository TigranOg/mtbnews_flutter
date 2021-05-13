import 'package:http/http.dart' as http;
import 'package:mtb_news/models/news_data.dart';
import 'package:xml/xml.dart';
import 'package:mtb_news/constants.dart' as Constants;

class NewsProvider {
  Future<List<NewsData>> getNewsFromApi() async {
    List<NewsData> newsList = [];

    Uri url = Uri.https('pinkbike.com', 'pinkbike_xml_feed.php');
    final response = await http.get(url);
    final document = XmlDocument.parse(response.body);
    final titles = document.findAllElements('item');

    titles.forEach((dynamic val) => {
      newsList.add(parseNode(val))
    });

    return newsList;
  }

  NewsData parseNode(XmlNode node) {
    // print(node.findElements('title').single.text);

    String title = node.findElements('title').single.text;

    String description = node.findElements('description').single.text;

    final urlRegExp = RegExp(r'(?:(?:https?):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
    final imgSrc = urlRegExp.firstMatch(description).group(0);


    return NewsData(
        id: title.hashCode,
        imageUrl: imgSrc,
        sourceType: Constants.PINKBIKE_SOURCE,
        title: title);
  }
}
