import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/News/newsArguments.dart';
import 'package:lionsclub/Widgets/News/news_detail.dart';
class NewsPage extends StatefulWidget {
  final String title;
  @override
  NewsPage(this.title);
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title
        ),
      ),
      body: Listview(),
    );
  }

}

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> newsTitles = [
    "Sujit",
    "Prateek",
    "News Testing",
    "News Point",
    "News Zonal",
    "First News",
    "People around 1 Km are diagonised by COVID-19",
  ];

  List<String> newsDate = [
    "21/06/2020",
    "22/06/2020",
    "23/06/2020",
    "24/06/2020",
    "25/06/2020",
    "26/06/2020",
    "27/06/2020",
  ];

  List<String> imageUrls = [
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/4397899/pexels-photo-4397899.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  List<String> newsArticle = [
    'That know ask case sex ham dear her spot. Weddings followed the all marianne nor whatever settling. Perhaps six prudent several her had offence. Did had way law dinner square tastes. Recommend concealed yet her procuring see consulted depending. Adieus hunted end plenty are his she afraid. Resources agreement contained propriety applauded neglected use yet. ',
    'Next his only boy meet the fat rose when. Do repair at we misery wanted remove remain income. Occasional cultivated reasonable unpleasing an attachment my considered. Having ask and coming object seemed put did admire figure. Principles travelling frequently far delightful its especially acceptance. Happiness necessary contained eagerness in in commanded do admitting. Favourable continuing difficulty had her solicitude far. Nor doubt off widow all death aware offer. We will up able in both do sing. ',
    'Improved own provided blessing may peculiar domestic. Sight house has sex never. No visited raising gravity outward subject my cottage mr be. Hold do at tore in park feet near my case. Invitation at understood occasional sentiments insipidity inhabiting in. Off melancholy alteration principles old. Is do speedily kindness properly oh. Respect article painted cottage he is offices parlors. ',
    'Sex reached suppose our whether. Oh really by an manner sister so. One sportsman tolerably him extensive put she immediate. He abroad of cannot looked in. Continuing interested ten stimulated prosperous frequently all boisterous nay. Of oh really he extent horses wicket.',
    'It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.',
    'In up so discovery my middleton eagerness dejection explained. Estimating excellence ye contrasted insensible as. Oh up unsatiable advantages decisively as at interested. Present suppose in esteems in demesne colonel it to. End horrible she landlord screened stanhill. Repeated offended you opinions off dissuade ask packages screened. She alteration everything sympathize impossible his get compliment. Collected few extremity suffering met had sportsman.',
    'Do am he horrible distance marriage so although. Afraid assure square so happen mr an before. His many same been well can high that. Forfeited did law eagerness allowance improving assurance bed. Had saw put seven joy short first. Pronounce so enjoyment my resembled in forfeited sportsman. Which vexed did began son abode short may. Interested astonished he at cultivated or me. Nor brought one invited she produce her.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: newsTitles.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetail(),
                    settings: RouteSettings(
                      arguments: NewsArguments(newsTitles[index], newsDate[index],
                          imageUrls[index], newsArticle[index]),
                    ),
                  ),
                );
            },
            child: Container(
                child: Card(
                  child: ListTile(
                    leading:
                        Image.network(imageUrls[index], height: 40, width: 40),
                    title: Text(newsTitles[index], style: TextStyle(fontSize: 21)),
                    subtitle:
                        Text(newsDate[index], style: TextStyle(fontSize: 12)),
                    trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black),
                  ),
                ),
              ),
          );
        }),
    );
  }
}