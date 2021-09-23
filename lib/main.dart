import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} 

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> ContactList = [
    {"name": "Bae Suzy", "email": "suzy@gmail.com", "phoneNumber": "088263775638", "photo": "https://pbs.twimg.com/profile_images/1267029354237722624/vbYKLHYI_400x400.jpg"},
    {"name": "Lalisa Manoban", "email": "lisa@gmail.com", "phoneNumber": "089624369754", "photo": "https://awsimages.detik.net.id/community/media/visual/2018/11/28/7536ed5f-315b-47c8-8289-d8122469d5fe_43.png?w=700&q=90"},
    {"name": "Jennie Kim Jendeuki Fitri Dwi Alfina", "email": "jennie@gmail.com", "phoneNumber": "081253983686", "photo": "https://awsimages.detik.net.id/community/media/visual/2021/08/03/jennie-blackpink_43.jpeg?w=700&q=90"},
    {"name": "Park Chae Young", "email": "rose@gmail.com", "phoneNumber": "0873586358542", "photo": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/07/21/3732174863.jpg"},
    {"name": "Kystal Jung", "email": "kystal@gmail.com", "phoneNumber": "081274389693", "photo": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/08/08/2996075921.jpeg"},
    {"name": "Gong Yoo", "email": "gongyoo@gmail.com", "phoneNumber": "082641368295", "photo": "https://awsimages.detik.net.id/community/media/visual/2020/09/21/gong-yoo-8_43.jpeg?w=700&q=90"},
    {"name": "Kim Ji Soo", "email": "jisoo@gmail.com", "phoneNumber": "082156359754", "photo": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/04/06/852389697.jpg"},
    {"name": "Park Seo Joon", "email": "seojoon@gmail.com", "phoneNumber": "087988542 457", "photo": "https://awsimages.detik.net.id/community/media/visual/2020/03/05/1fdf5cf9-dcaa-4ff8-9f8b-c9099c530208_169.jpeg?w=700&q=90"},
    {"name": "Kim Seon Ho Hahaha Figo Perdana Putra", "email": "seonho@gmail.com", "phoneNumber": "0817353288287", "photo": "https://asset.kompas.com/crops/GajNXc5MTleXHwSYif9BeD1pex0=/0x0:0x0/750x500/data/photo/2020/11/02/5f9fbeaa9904f.jpeg"},
    {"name": "Nam Joo Hyuk", "email": "joohyuk@gmail.com", "phoneNumber": "0876325890897", "photo": "https://www.dreamers.id/img_artikel/40nam-joo-hyuk-1.jpg"},
    {"name": "Han Son Hee", "email": "sonhee@gmail.com", "phoneNumber": "086523629y85", "photo": "https://assets.pikiran-rakyat.com/crop/16x44:1040x896/x/photo/2021/07/12/1053490548.jpg"},
    {"name": "Moon Ga Young", "email": "gayoung@gmail.com", "phoneNumber": "085235279965", "photo": "https://zapzee.net/wp-content/uploads/2020/05/90112381_2637278553161410_885375235686137856_o-1.jpg"},
    {"name": "Lee Sung Kyung", "email": "sungkyung@gmail.com", "phoneNumber": "084296369535", "photo": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/04/27/2216224597.jpg"},
    {"name": "Song Hye Kyo", "email": "hyekyo@gmail.com", "phoneNumber": "086524579634", "photo": "https://awsimages.detik.net.id/visual/2021/05/10/song-hye-kyo-vikicom_169.jpeg?w=650"},
    {"name": "Jung Hae In", "email": "haein@gmail.com", "phoneNumber": "081575379863", "photo": "https://cdn.idntimes.com/content-images/community/2019/12/1-2513b61d0f3169e54ea03aab93147584_600x400.jpg"},
    {"name": "Park Bo Gum", "email": "bogum@gmail.com", "phoneNumber": "085325797521", "photo": "https://www.wowkeren.com/images/photo/park_bo_gum.jpg"},
    {"name": "Kang Seul Gi", "email": "seulgi@gmail.com", "phoneNumber": "085215795368", "photo": "https://cdns.klimg.com/resized/476x/g/2019/11/22/r/idol_cewek_monolid-20191122-004-non_fotografer_kly.jpg"},
    {"name": "Park Soo Young Youngggggyyyyiieeee", "email": "joyyaa@gmail.com", "phoneNumber": "081275373691", "photo": "https://i.pinimg.com/originals/46/68/3f/46683fe1fd0463e755abb92e0b195f5a.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Contacts",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          backgroundColor: Colors.cyan,
        ),
        body: ListView(
          children: ContactList.map((data) {
            ContactList.sort((a,b) => a["name"].compareTo(b["name"]));
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.cyan,
                          backgroundImage: NetworkImage(data["photo"]),
                        ),
                        SizedBox(
                          width: 20,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["name"],
                              style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.bold),
                              ),
                            Text(
                              data["email"],
                              style: TextStyle(fontSize: 18, height: 1.5),
                            ),
                            Text(
                              data["phoneNumber"],
                              style: TextStyle(fontSize: 18, height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
