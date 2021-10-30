import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/Models/models.dart';
import 'package:project1/profile_page.dart';

List <PostModel> postmodels = [
  PostModel(username: "Chanchal Chowdhury", caption: "Sundarbans", address: "Khulna, Satkhira and Bagerha, Bangladesh.", imageURl: "images/Posts/Post-1.jpg", userImageURL: "images/user_images/User-1.jpg", likes: 234,),
  PostModel(username: "Riaz", caption: "Shiromoni", address: "Shiroman, Khulna, Bangladesh.", imageURl: "images/Posts/Post-2.jpg", userImageURL: "images/user_images/User-2.jpg", likes: 266,),
  PostModel(username: "Mosharraf Karim", caption: "Gallamari", address: "Mayur River, Khulna University, Khulna.", imageURl: "images/Posts/Post-3.jpg", userImageURL: "images/user_images/User-3.jpg", likes: 235,),
  PostModel(username: "Humayun Faridi", caption: "Senhati", address: "Senhati,Dighalia, Khulna.", imageURl: "images/Posts/Post-4.jpg", userImageURL: "images/user_images/User-4.jpg", likes: 212,),
  PostModel(username: "Purnima", caption: "Bakultala (Deputy Commissioner’s Bungalow)", address: "the banks of the river Bhairab, Khulna.", imageURl: "images/Posts/Post-5.jpg", userImageURL: "images/user_images/User-5.jpg", likes: 214,),
  PostModel(username: "Nusrat Imroz Tisha", caption: "Raruli-Katipara", address: "Kapotaksha River, Paikgachha, Khulna.", imageURl: "images/Posts/Post-6.jpg", userImageURL: "images/user_images/User-6.jpg", likes: 217,),
  PostModel(username: "Asaduzzaman Noor", caption: "Pithabhog", address: "Pithabhog, Rupsha, Khulna.", imageURl: "images/Posts/Post-7.jpg", userImageURL: "images/user_images/User-7.jpg", likes: 287,),
  PostModel(username: "Jaya Ahsan", caption: "Dakshindihi", address: "Fultala, Khulna.", imageURl: "images/Posts/Post-8.jpg", userImageURL: "images/user_images/User-8.jpg", likes: 127,),
  PostModel(username: "A.T.M. Shamsuzzaman", caption: "Rupsha Khan Jahan Ali Shetu", address: "Labanchara, Khulna", imageURl: "images/Posts/Post-9.jpg", userImageURL: "images/user_images/User-9.jpg", likes: 257,),
  PostModel(username: "Abul Hayat", caption: "Khulna Divisional Museum", address: "Shivbari Mor, Khulna", imageURl: "images/Posts/Post-10.jpg", userImageURL: "images/user_images/User-10.jpg", likes: 269,),
];




class PostsPage extends StatefulWidget {
  const PostsPage({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, 0.6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 35, 1),
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> ProfilePage(),
              ),
            );
          },
        ),
        title: Text(
          "Posts",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(24, 24, 35, 1)
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined,
              color: Color.fromRGBO(24, 24, 35, 1),
            ),
            iconSize: 20,
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=> PostsPage(),
              ),
              );
            },
          ),
        ],
      ),

      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          itemCount: postmodels.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: MediaQuery.of(context).size.height/1.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(21, 21, 21, .2),
                    Color.fromRGBO(21, 21, 21, .3),
                    Color.fromRGBO(28, 86, 26, .4),
                    Color.fromRGBO(21, 21, 21, .5),
                    Color.fromRGBO(94, 21, 21, .8),
                    Color.fromRGBO(21, 21, 21, .9),
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Column(
                  children: [

                    //Header of the Post Box

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                          backgroundImage: AssetImage("${postmodels[index].userImageURL}"),
                            radius: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: "${postmodels[index].username}\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: "${DateTime.now()}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Address Row

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,
                          size: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "${postmodels[index].address}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Caption Text

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "${postmodels[index].caption}",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Color.fromRGBO(0, 0, 0, 1)
                        ),
                      ),
                    ),

                    //Images Container

                    Container(
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage("${postmodels[index].imageURl}"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [

                          //Like Flut Button

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.heart,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "${postmodels[index].likes} Likes",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),

                          // Comment Flut Button

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3.8,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.chat_bubble,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "Comments",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),

                          //Share Flut Button

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3.9,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.share,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        )
      )


    );
  }
}
