import 'package:flutter/material.dart';

double ch_hi_li = 110;
//double ch_wi_li = 85;
Color conCardInActiveC = Color(0xFFFFFFFF);
Color conCardActiveC = Color(0xC4FFFFFF);
var welcome = "Welcome,";
var homeBoxTitle01 = "Distance By Symbol";
var homeBoxTitle02 = "Hazardpedia";
var cardNameList = "";
var hazardPic01 = "blank";
var hazardPic02 = "blank";
var hazardName01 = "select a chemical hazard";
var hazardName02 = "select a chemical hazard";
var dis = "3";
var unit = "";
String intp = "";
var interpretation = "";
var picitem01 = "num1";
var picitem02 = "num2";
bool selectOne = true;
bool en = true;
Color cardColor = Colors.white;
Color popInsColor = Colors.white;
void reset() {
  //cardLanColor("0");
  unit = "";
  cardColor = Colors.white;
  popInsColor = Colors.white;
  hazardPic01 = "blank";
  hazardPic02 = "blank";
  hazardName01 = "select a chemical hazard";
  hazardName02 = "select a chemical hazard";

  dis = "";
  intp = "";
  picitem01 = "num1";
  picitem02 = "num2";
  selectOne = true;
}

var hazardName_bn = [
  "দাহ্য গ্যাস",
  "অ বিষাক্ত অ জ্বলনযোগ্য গ্যাস",
  "বিষাক্ত গ্যাস",
  "জারণ গ্যাস",
  "দাহ্য তরল পদার্থ",
  "দহনযোগ্য কঠিন",
  "দহনযোগ্য কঠিন",
  "ভিজা হলে বিপজ্জনক",
  "জারক এজেন্ট",
  "জৈব পারক্সাইড",
  "বিষাক্ত পদার্থ",
  "ক্ষয়কারী"
];
var hazardName_en = [
  "Flammable Gas",
  "Non Toxic Non Flammable Gas",
  "Toxic Gas",
  "Oxidising Gas",
  "Flammable Liquids",
  "Flammable Solid",
  "Spontaneously Combustible",
  "Dangerous When Wet",
  "Oxidizing Agent",
  "Organic Peroxide",
  "Toxic Substances",
  "Corrosive"
];
var hazardData = [
  ["OK", "OK", "3", "3", "5", "5", "5", "5", "3", "Isolate", "3", "5"],
  ["OK", "OK", "OK", "OK", "5", "5", "5", "5", "3", "Isolate", "3", "5"],
  ["3", "OK", "N/A", "3", "5", "5", "5", "5", "3", "Isolate", "3", "5"],
  ["3", "OK", "3", "OK", "5", "5", "5", "5", "3", "Isolate", "3", "5"],
  ["5", "5", "5", "5", "OK", "3", "5", "5", "5", "Isolate", "5", "3"],
  ["5", "5", "5", "5", "3", "OK", "3", "5", "Apart", "Isolate", "3", "N/A"],
  ["5", "5", "5", "5", "5", "3", "OK", "5", "5", "Isolate", "3", "3"],
  ["5", "5", "5", "5", "5", "5", "5", "OK", "5", "Isolate", "3", "5"],
  ["5", "5", "5", "5", "5", "Apart", "5", "5", "N/A", "Isolate", "3", "3"],
  [
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "Isolate",
    "OK",
    "Isolate",
    "3"
  ],
  ["3", "3", "3", "3", "5", "3", "3", "3", "3", "Isolate", "OK", "5"],
  ["5", "5", "5", "5", "3", "N/A", "3", "5", "3", "3", "5", "N/A"],
];
var hazardData_bn = [
  ["OK", "OK", "৩", "৩", "৫", "৫", "৫", "৫", "৩", "আলাদা", "৩", "৫"],
  ["OK", "OK", "OK", "OK", "৫", "৫", "৫", "৫", "৩", "আলাদা", "৩", "৫"],
  ["৩", "OK", "N/A", "৩", "৫", "৫", "৫", "৫", "৩", "আলাদা", "৩", "৫"],
  ["৩", "OK", "৩", "OK", "৫", "৫", "৫", "৫", "৩", "আলাদা", "৩", "৫"],
  ["৫", "৫", "৫", "৫", "OK", "৩", "৫", "৫", "৫", "আলাদা", "৫", "৩"],
  ["৫", "৫", "৫", "৫", "৩", "OK", "৩", "৫", "দূরে", "আলাদা", "৩", "N/A"],
  ["৫", "৫", "৫", "৫", "৫", "৩", "OK", "৫", "৫", "আলাদা", "৩", "৩"],
  ["৫", "৫", "৫", "৫", "৫", "৫", "৫", "OK", "৫", "আলাদা", "৩", "৫"],
  ["৫", "৫", "৫", "৫", "৫", "দূরে", "৫", "৫", "N/A", "আলাদা", "৩", "৩"],
  [
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "আলাদা",
    "OK",
    "আলাদা",
    "৩"
  ],
  ["৩", "৩", "৩", "৩", "৫", "৩", "৩", "৩", "৩", "আলাদা", "Ok", "৫"],
  ["৫", "৫", "৫", "৫", "৩", "N/A", "৩", "৫", "৩", "৩", "৫", "N/A"],
];
var hazardListPhoto = [
  "images/fg.png",
  "images/nt.png",
  "images/tg.png",
  "images/og.png",
  "images/fl.png",
  "images/fs.png",
  "images/sc.png",
  "images/dw.png",
  "images/oa.png",
  "images/op.png",
  "images/ts.png",
  "images/co.png"
];
var hazardPhoto = [
  "fg",
  "nt",
  "tg",
  "og",
  "fl",
  "fs",
  "sc",
  "dw",
  "oa",
  "op",
  "ts",
  "co"
];
int getIndex(String nam) {
  int i;
  if (en) {
    for (i = 0; i < hazardName_en.length; i++) {
      if (nam == hazardName_en[i]) {
        break;
      } else {
        continue;
      }
    }
  } else {
    for (i = 0; i < hazardName_bn.length; i++) {
      if (nam == hazardName_bn[i]) {
        break;
      } else {
        continue;
      }
    }
  }

  return i;
}

var hazardDetalsData = [
  [
    "These burn when mixed with an oxidant and provided with a source of ignition. Fuel gas that has leaked may form an ignitable mixture with the surrounding air, resulting in fire or explosion.",
    "Acetylene, ammonia, hydrogen, propane, propylene and methane"
  ],
  [
    "Gases which are asphyxiants (gases which dilute or replace the oxygen in the atmosphere); or are oxidizing (gases which may, generally by providing oxygen, cause or contribute to the combustion of other material more than air does)",
    "compressed air, nitrogen, argon, carbon dioxide, and helium"
  ],
  [
    "Toxic gas can cause damage to living tissue, the central nervous system, severe illness, or even death. Some toxic gases are not visible, cannot be smelled, and/or they may not have an immediate effect but can be the cause of death.",
    "carbon monoxide, chlorine, nitrogen dioxide and phosgene"
  ],
  [
    "Oxidizing gas means any gas which may, generally by providing oxygen, cause or contribute to the combustion of other materials more than air does",
    "chlorine, nitrous oxide, oxygen, and compressed air"
  ],
  [
    "Liquids which can be easily ignited in air at ambient temperatures, i.e. it has a flash point at or below nominal threshold temperatures defined by a number of national and international standards organisations",
    "gasoline, acetone, toluene, diethyl ether, alcohol"
  ],
  [
    "Flammable solid is a solid object that is combustible or that may be a contributor to a fire through friction or brief contact with a source of ignition",
    "metallic hydrides, metallic sodium and potassium, oily fabrics, processed metals, matches, and nitrocellulose products"
  ],
  [
    "Spontaneously combustible materials are also known as pyrophorics; these chemicals can spontaneously ignite in the presence of air, some are reactive with water vapor, and most are reactive with oxygen",
    "tert-Butyllithium under Hexanes and White Phosphorus"
  ],
  [
    "Dangerous when wet material means a material that, by contact with water, gives off flammable or toxic gas.",
    "sodium, calcium, potassium and calcium carbide"
  ],
  [
    "Oxidizing materials may be toxic or corrosive. Depending on the material, route of exposure (inhalation, eye or skin contact, or swallowing) and dose, they could harm the body. Corrosive oxidizers can also attack and destroy metal",
    "Hydrogen peroxide, ozone, oxygen, potassium nitrate, and nitric acid"
  ],
  [
    "Organic peroxides are their fire and explosion hazards. Organic peroxides may also be toxic or corrosive. Depending on the material, route of exposure",
    "methyl ethyl ketone peroxide"
  ],
  [
    "A toxic substance is a substance that can be poisonous or cause health effects",
    "Radon in basements, lead in drinking water, exhausts from cars and chemicals released from landfills"
  ],
  [
    "Corrosives are materials that can attack and chemically destroy exposed body tissues. Corrosives can also damage or even destroy metal. They begin to cause damage as soon as they touch the skin, eyes, respiratory tract, digestive tract, or the metal.",
    " hydrochloric acid, sulfuric acid, nitric acid, chromic acid, acetic acid and hydrofluoric acid"
  ],
];

const ResultTextStyle = TextStyle(
  //color: popTextColor,
  //fontFamily: 'Source Sans Pro',
  letterSpacing: 1,
  fontSize: 22.0,
  fontWeight: FontWeight.w600,
);

const DistanceTextStyle = TextStyle(
  //color: popTextColor,
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const conLabelBigText = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.w900,
);
const conLabel = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w800,
);
const conTitleDetals = TextStyle(
  //color: Color(0xB00D1D24),
  fontFamily: 'Source Sans Pro',
  letterSpacing: 2,
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w800,
);
const conBodyDetals = TextStyle(
  fontFamily: 'Source Sans Pro',
  letterSpacing: 1,
  color: Color(0x9C0D1D24),
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
const homeTitle = TextStyle(
  //color: Color(0xBF0D1D24),
  color: Colors.black,
  fontFamily: 'Source Sans Pro',
  letterSpacing: 2,
  //color: Color(0x9C0D1D24),
  fontSize: 25,
  fontWeight: FontWeight.w400,
);

Color colorLanBody1 = Colors.black;
Color colorLanBody2 = Colors.white;
Color colorLanText1 = Colors.white;
Color colorLanText2 = Colors.grey;
var lan = "0";
// var myCC2 = myinC;
//
void cardLanColor(lan) {
  if (lan == "0") {
    colorLanBody1 = Colors.black;
    colorLanBody2 = Colors.white;
    colorLanText1 = Colors.white;
    colorLanText2 = Colors.grey;
  } else if (lan == "1") {
    colorLanBody2 = Colors.black;
    colorLanBody1 = Colors.white;
    colorLanText2 = Colors.white;
    colorLanText1 = Colors.grey;
  }
}

void resultPage(var dis) {
  if (dis == "3") {
    popInsColor = Colors.amberAccent;
    intp = (en)
        ? "You Can Place The Chemical Hazards In 5 Meters Distance"
        : "আপনি রাসায়নিকগুলি ৩ মিটার দূরত্বে রাখতে পারবেন";
    //unit = "meters";
    unit = "3";
  } else if (dis == "5") {
    intp = (en)
        ? "You Can Place The Chemical Hazards In 5 Meters Distance"
        : "আপনি রাসায়নিকগুলি ৫ মিটার দূরত্বে রাখতে পারবেন";

    unit = "5";
    popInsColor = Colors.orangeAccent;
  } else if (dis == "OK") {
    intp = (en)
        ? "It Is Safe To Place The Chemical Hazards Together"
        : "আপনি রাসায়নিকগুলি নিরাপদে একসাথে রাখতে পারবেন";
    unit = "ok";
    popInsColor = Color(0xFFB6D7A8);
  } else if (dis == "Isolate") {
    intp = (en)
        ? "Isolate! You Can Not Place The Chemical Hazards"
        : "আপনি রাসায়নিকগুলি একসাথে রাখতে পারবেন না";

    unit = "block";
    popInsColor = Colors.redAccent;
  } else if (dis == "Apart") {
    intp = (en)
        ? "Apart! You Can Not Place The Chemical Hazards"
        : "আপনি রাসায়নিকগুলি একসাথে রাখতে পারবেন না";
    unit = "block";
    popInsColor = Colors.redAccent;
  } else if (dis == "N/A") {
    popInsColor = Colors.white;

    intp = (en)
        ? "For the Chemical Hazards Distance Is Not Applicable"
        : "রাসায়নিকগুলির জন্য দূরত্ব প্রযোজ্য নয়";
    unit = "na";
  }
}

var hazardDetalsData_bn = [
  [
    "এইগুলি যখন একটি অক্সিড্যান্টের সাথে মিশে যায় এবং ইগনিশন উত্স সরবরাহ করে। যে জ্বালানী গ্যাস ফুটো হয়েছে তা আশেপাশের বাতাসের সাথে জ্বলন্ত মিশ্রণ তৈরি করতে পারে, যার ফলে আগুন বা বিস্ফোরণ ঘটে।",
    "এসিটিলিন, অ্যামোনিয়া, হাইড্রোজেন, প্রোপেন, প্রোপিলিন এবং মিথেন"
  ],
  [
    "যে গ্যাসগুলো শ্বাসরোধী (গ্যাস যা বায়ুমণ্ডলে অক্সিজেনকে পাতলা বা প্রতিস্থাপন করে) অথবা অক্সিডাইজিং (গ্যাস যা সাধারণত অক্সিজেন সরবরাহ করে বাতাসের চেয়ে অন্যান্য উপাদানের দহনে কারণ বা অবদান রাখতে পারে)",
    "সংকুচিত বায়ু, নাইট্রোজেন, আর্গন, কার্বন ডাই অক্সাইড এবং হিলিয়াম"
  ],
  [
    "বিষাক্ত গ্যাস জীবন্ত টিস্যু, কেন্দ্রীয় স্নায়ুতন্ত্র, গুরুতর অসুস্থতা, এমনকি মৃত্যুর ক্ষতি করতে পারে। কিছু বিষাক্ত গ্যাস দৃশ্যমান নয়, গন্ধ পাওয়া যায় না, এবং এগুলোর তাৎক্ষণিক প্রভাব নাও হতে পারে কিন্তু মৃত্যুর কারণ হতে পারে।",
    "কার্বন মনোক্সাইড, ক্লোরিন, নাইট্রোজেন ডাই অক্সাইড এবং ফসজিন"
  ],
  [
    "অক্সিডাইজিং গ্যাস মানে এমন কোন গ্যাস যা সাধারণত অক্সিজেন সরবরাহ করে বাতাসের চেয়ে অন্যান্য উপকরণ দহনে কারণ বা অবদান রাখতে পারে।",
    "ক্লোরিন, নাইট্রাস অক্সাইড, অক্সিজেন এবং সংকুচিত বায়ু"
  ],
  [
    "তরল যা পরিবেষ্টিত তাপমাত্রায় সহজেই বাতাসে প্রজ্বলিত হতে পারে, যেমন এটি একটি জাতীয় এবং আন্তর্জাতিক মান সংস্থার সংজ্ঞায়িত নামমাত্র প্রান্তিক তাপমাত্রায় বা তার নীচে একটি ফ্ল্যাশ পয়েন্ট রয়েছে",
    "পেট্রল, এসিটোন, টলুইন, ডাইথাইল ইথার, অ্যালকোহল"
  ],
  [
    "দহনযোগ্য কঠিন একটি কঠিন বস্তু যা দহনযোগ্য বা ঘর্ষণ বা ইগনিশন উৎসের সাথে সংক্ষিপ্ত যোগাযোগের মাধ্যমে আগুনের অবদানকারী হতে পারে।",
    "ধাতব হাইড্রাইড, ধাতব সোডিয়াম এবং পটাসিয়াম, তৈলাক্ত কাপড়, প্রক্রিয়াজাত ধাতু, ম্যাচ এবং নাইট্রোসেলুলোজ পণ্য"
  ],
  [
    "স্বতস্ফূর্তভাবে দহনযোগ্য উপকরণ পাইরোফোরিক্স নামেও পরিচিত; এই রাসায়নিকগুলি বাতাসের উপস্থিতিতে স্বতস্ফূর্তভাবে জ্বলতে পারে, কিছু জলীয় বাষ্পের সাথে প্রতিক্রিয়াশীল, এবং অধিকাংশই অক্সিজেনের সাথে প্রতিক্রিয়াশীল।",
    "হেক্সানেস এবং হোয়াইট ফসফরাসের অধীনে tert-Butyllithium"
  ],
  [
    "উপাদান মানে এমন একটি উপাদান যা পানির সংস্পর্শে এসে দাহ্য বা বিষাক্ত গ্যাস বন্ধ করে।",
    "সোডিয়াম, ক্যালসিয়াম, পটাশিয়াম এবং ক্যালসিয়াম কার্বাইড"
  ],
  [
    "অক্সিডাইজিং উপকরণ বিষাক্ত বা ক্ষয়কারী হতে পারে। উপাদান, এক্সপোজার রুট (ইনহেলেশন, চোখ বা ত্বকের যোগাযোগ, বা গ্রাস করা) এবং ডোজের উপর নির্ভর করে, তারা শরীরের ক্ষতি করতে পারে। ক্ষয়কারী অক্সিডাইজার ধাতুকে আক্রমণ ও ধ্বংস করতে পারে।",
    "হাইড্রোজেন পারক্সাইড, ওজোন, অক্সিজেন, পটাসিয়াম নাইট্রেট এবং নাইট্রিক এসিড"
  ],
  [
    "জৈব পারক্সাইড তাদের আগুন এবং বিস্ফোরণের ঝুঁকি। জৈব পারঅক্সাইড বিষাক্ত বা ক্ষয়কারীও হতে পারে। উপাদান উপর নির্ভর করে, এক্সপোজারের রুট",
    "মিথাইল ইথাইল কেটোন পারক্সাইড"
  ],
  [
    "একটি বিষাক্ত পদার্থ এমন একটি পদার্থ যা বিষাক্ত হতে পারে বা স্বাস্থ্যের উপর প্রভাব ফেলতে পারে।",
    "বেজমেন্টে রেডন, পানীয় জলের মধ্যে সীসা, গাড়ি থেকে নিষ্কাশন এবং ল্যান্ডফিল থেকে নির্গত রাসায়নিক"
  ],
  [
    "ক্ষয়কারী উপাদানগুলি এমন পদার্থ যা আক্রমণ করে এবং রাসায়নিকভাবে উন্মুক্ত শরীরের টিস্যুকে ধ্বংস করতে পারে। ক্ষয়কারী ধাতুকেও ক্ষতি করতে পারে বা ধ্বংস করতে পারে। তারা ত্বক, চোখ, শ্বাসযন্ত্র, পাচনতন্ত্র বা ধাতু স্পর্শ করার সাথে সাথেই ক্ষতির কারণ হতে শুরু করে।",
    " হাইড্রোক্লোরিক এসিড, সালফিউরিক এসিড, নাইট্রিক এসিড, ক্রোমিক এসিড, এসিটিক এসিড এবং হাইড্রোফ্লোরিক এসিড"
  ],
];
