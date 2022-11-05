import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'home_cantroller.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _first_ScreenState();
}

class _first_ScreenState extends State<Second_Screen> {

  Home_provider? topflase;
  Home_provider?topTrue;

  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  Duration d1 = Duration(seconds: 0);

  @override
  void initState() {
    super.initState();

    assetsAudioPlayer.open(
      Audio("${Provider.of<Home_provider>(context,listen: false)!.Datapick?.Audio}"),
      autoStart: false,
      showNotification:true,
    );

    assetsAudioPlayer.current.listen((event) {
      d1= event!.audio.duration;
    });
  }

  @override
  Widget build(BuildContext context) {


    topflase =Provider.of<Home_provider>(context,listen: false);
    topTrue =Provider.of<Home_provider>(context,listen: true);


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(onTap: (){
                      Navigator.pop(context);
                    },child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.battery_0_bar,color: Colors.white,size: 30,),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Container(
                height: 250,
                width: 250,
                child: Image.network("${topflase!.Datapick!.Image}"),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("${topflase!.Datapick?.Name}",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("${topflase!.Datapick?.Sub}",style: TextStyle(fontSize: 16,color: Colors.white60),),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.add_road,color: Colors.white,),
                  Icon(Icons.wrap_text,color: Colors.white),
                  Icon(Icons.notifications,color: Colors.white),
                  Icon(Icons.more_vert,color: Colors.white),
                  InkWell(onTap: (){
                    bottomsheetdilaog();
                  },child: Icon(Icons.keyboard_arrow_up,color: Colors.white,size: 30,))

                ],
              ),

              SizedBox(height: 10,),

              assetsAudioPlayer.builderCurrentPosition
                (builder:(context,duration){
                return Column(
                  children: [
                    Slider(
                        max: d1.inSeconds.toDouble(),
                        value: duration.inSeconds.toDouble(),
                        onChanged: (value){
                          assetsAudioPlayer.seek(Duration(seconds: value.toInt()));
                        }
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3,left: 20,bottom: 6,right: 6),
                          child: Text("${duration.inMinutes}:${duration.inSeconds>60?duration.inSeconds-60:duration.inSeconds}",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3,left: 20,bottom: 6,right: 6),
                          child: Text("${d1.inMinutes}:${d1.inSeconds}",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                      ],
                    ),
                  ],
                );
              }
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.repeat,color: Colors.white,size: 30,),
                  Icon(CupertinoIcons.backward_end_fill,color: Colors.white,size: 30,),
                  IconButton(onPressed: (){
                    topflase!.playpause();
                    if(topflase!.isplay==true)
                    {
                      assetsAudioPlayer.play();
                    }
                    else{
                      assetsAudioPlayer.pause();
                    }
                  },
                      icon:Icon(topTrue!.isplay?Icons.pause_circle_outline:Icons.play_circle_fill,color: Colors.white,size: 40,)),
                  Icon(CupertinoIcons.forward_end_fill,color: Colors.white,size: 30,),
                  Icon(Icons.menu_open_rounded,color: Colors.white,size: 30,)
                ],
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white38),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share,size: 20,color: Colors.white,),
                          SizedBox(width: 8,),
                          Text("SHARE",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ),

                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white38),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.menu,size: 20,color: Colors.white,),
                          SizedBox(width: 12,),
                          Text("LYRLCS",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void bottomsheetdilaog(){
    showModalBottomSheet(
        backgroundColor: Colors.black,
        context:context,
        builder:(context){
          return Container(
            height: 320,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20), color: Colors.blue,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Song details",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),),
                    ),
                    Expanded(child: Container()),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.clear,color: Colors.white,size: 25)),
                  ],
                ),
                Container(margin: EdgeInsets.only(left: 15,right: 15),height: 0.5,width: double.infinity,color: Colors.white,),
                SizedBox(height: 60,),
                Center(child: Text("Submit your Feedback",style: TextStyle(color: Colors.white),)),
                RatingBar(
                  minRating: 1,
                  maxRating: 5,
                  glowRadius: 3,
                  allowHalfRating: true,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    empty: Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    half: halficon(),
                  ),
                ),
                SizedBox(height: 60,),
                Container(height: 0.5,width: double.infinity,color: Colors.white,),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 50,width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                    child: Center(child: Text("Submit Feedback",style: TextStyle(color: Colors.black)),),

                  ),
                ),
              ],
            ),

          );
        }
    );
  }
  Widget halficon()=>Image.asset("assets/image/star.webp");
}