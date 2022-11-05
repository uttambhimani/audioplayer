import 'package:flutter/material.dart';

import 'model_class.dart';


class Home_provider extends ChangeNotifier {

  bool isplay = false;

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }


  List<Modeldata>l1 = [
    Modeldata(Name: "Melo_De_Carla_Cintia_Reg...", Subtitie: "<unknown>-Melo_De_Car...",   Audio: "assets/audio/PETRUNKO REMIX by FanEOne _ ROLLS ROYCE(MP3_320K).mp3", Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "MoneyHeistRingtoneBellaC...", Subtitie: "<unknown>-MoneyHeistRi...",   Audio: "assets/audio/MoneyHeistRingtoneBellaCiao568145647.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "One_night_in_dubai_(2).m..", Subtitie: "<unknown>-One_night_in..",     Audio: "assets/audio/One_night_in_dubai_(2).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Pirates_BGM_-_Hollywood_B..", Subtitie: "<unknown>-Pirates_BGM...",    Audio: "assets/audio/Pirates_BGM_-_Hollywood_BGM.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Say_My_Name.mp3..", Subtitie: "<unknown>-Say_My_Na..",                 Audio: "assets/audio/Say_My_Name.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "taki_taki_rumba_(1).mp3..", Subtitie: "<unknown>-taki_taki_rumb...",   Audio: "assets/audio/taki_taki_rumba_(1).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Download-Free-Airtel-New-..", Subtitie: "<unknown>-Download-Free-Ai..",Audio: "assets/audio/Download-Free-Airtel-New-Ringtone.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Melo_De_Carla_Cintia_Reg...", Subtitie: "<unknown>-Melo_De_Car...",    Audio: "assets/audio/Melo_De_Carla_Cintia_Reggae_!_Remix_(1).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "MoneyHeistRingtoneBellaC...", Subtitie: "<unknown>-MoneyHeistRi...",   Audio: "assets/audio/MoneyHeistRingtoneBellaCiao568145647.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "One_night_in_dubai_(2).m..", Subtitie: "<unknown>-One_night_in..",     Audio: "assets/audio/One_night_in_dubai_(2).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Pirates_BGM_-_Hollywood_B..", Subtitie: "<unknown>-Pirates_BGM...",    Audio: "assets/audio/Pirates_BGM_-_Hollywood_BGM.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Say_My_Name.mp3..", Subtitie: "<unknown>-Say_My_Na..",                 Audio: "assets/audio/Say_My_Name.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "taki_taki_rumba_(1).mp3..", Subtitie: "<unknown>-taki_taki_rumb...",   Audio: "assets/audio/taki_taki_rumba_(1).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Download-Free-Airtel-New-..", Subtitie: "<unknown>-Download-Free-Ai..",Audio: "assets/audio/Download-Free-Airtel-New-Ringtone.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Melo_De_Carla_Cintia_Reg...", Subtitie: "<unknown>-Melo_De_Car...",    Audio: "assets/audio/Melo_De_Carla_Cintia_Reggae_!_Remix_(1).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "MoneyHeistRingtoneBellaC...", Subtitie: "<unknown>-MoneyHeistRi...",   Audio: "assets/audio/MoneyHeistRingtoneBellaCiao568145647.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "One_night_in_dubai_(2).m..", Subtitie: "<unknown>-One_night_in..",     Audio: "assets/audio/One_night_in_dubai_(2).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Pirates_BGM_-_Hollywood_B..", Subtitie: "<unknown>-Pirates_BGM...",    Audio: "assets/audio/Pirates_BGM_-_Hollywood_BGM.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "Say_My_Name.mp3..", Subtitie: "<unknown>-Say_My_Na..",                 Audio: "assets/audio/Say_My_Name.mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
    Modeldata(Name: "taki_taki_rumba_(1).mp3..", Subtitie: "<unknown>-taki_taki_rumb...",   Audio: "assets/audio/taki_taki_rumba_(1).mp3",Image: "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",Sub: "<unkonown>"),
  ];

  List data = [];
  Modeldata?Datapick;

}