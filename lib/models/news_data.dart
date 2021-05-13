import 'package:meta/meta.dart';
import 'package:mtb_news/constants.dart' as Constants;

class NewsData {
  final String sourceType;
  final int id;
  final String imageUrl;
  final String title;

  const NewsData({
    @required this.id,
    @required this.imageUrl,
    @required this.sourceType,
    @required this.title,
  });
}

const NewsListMock = [
  NewsData(
      id: 1,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20300592/p2pb20300592.jpg',
      sourceType: Constants.PINKBIKE_SOURCE,
      title: ''),
  NewsData(
      id: 2,
      imageUrl:
          'https://p.vitalmtb.com/photos/spotlights/32740/b/c235x132_max_p0pb20297421_552905.jpg?1616177633',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 3,
      imageUrl: 'https://picsum.photos/seed/image003/500/300',
      sourceType: Constants.PINKBIKE_SOURCE,
      title: ''),
  NewsData(
      id: 4,
      imageUrl: 'https://ep1.pinkbike.org/p2pb18633874/p2pb18633874.jpg',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 5,
      imageUrl: 'https://picsum.photos/seed/image005/500/600',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 6,
      imageUrl: 'https://picsum.photos/seed/image006/500/500',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 7,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20320549/p2pb20320549.jpg',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 8,
      imageUrl: 'https://picsum.photos/seed/image008/500/700',
      sourceType: Constants.PINKBIKE_SOURCE,
      title: ''),
  NewsData(
      id: 9,
      imageUrl:
          'https://p.vitalmtb.com/photos/spotlights/32751/b/c235x132_Screen_Shot_2021_03_22_at_9.50.00_AM.jpg?1616428534',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 11,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20315170/p2pb20315170.jpg',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 12,
      imageUrl: 'https://picsum.photos/seed/image011/500/900',
      sourceType: Constants.PINKBIKE_SOURCE,
      title: ''),
  NewsData(
      id: 13,
      imageUrl:
          'https://cyclingmagazine.ca/wp-content/uploads/2021/03/Specialized-Rime-10-640x427.jpg',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 14,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20310273/p2pb20310273.jpg',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 15,
      imageUrl:
          'https://p.vitalmtb.com/photos/spotlights/32744/b/c235x132_bren_olly.jpg?1616264796',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 16,
      imageUrl:
          'https://cyclingmagazine.ca/wp-content/uploads/2021/03/1-Norco-Brand-Hero-640x427.jpeg',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 17,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20310324/p2pb20310324.jpg',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
  NewsData(
      id: 18,
      imageUrl:
          'https://p.vitalmtb.com/photos/spotlights/32741/b/c235x132_s1600_DTrumpore_202103_TennesseeNational_139_Copy_146758.jpg?1616182282',
      sourceType: Constants.PINKBIKE_SOURCE,
      title: ''),
  NewsData(
      id: 19,
      imageUrl:
          'https://cyclingmagazine.ca/wp-content/uploads/2021/03/1-Tayte-Proulx-Royds-640x512.jpg',
      sourceType: Constants.DIRT_SOURCE,
      title: ''),
  NewsData(
      id: 20,
      imageUrl: 'https://ep1.pinkbike.org/p2pb20300018/p2pb20300018.jpg',
      sourceType: Constants.VITAL_SOURCE,
      title: ''),
];
