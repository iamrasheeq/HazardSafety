import 'package:flutter/material.dart';

double ch_hi_li = 110;
//double ch_wi_li = 85;
var cardNameList = "";
var hazardPic01 = "blank";
var hazardPic02 = "blank";
var hazardName01 = "select a chemical hazard";
var hazardName02 = "select a chemical hazard";
var dis = "";
var unit = "";
String intp = "";
var interpretation = "";
var picitem01 = "num1";
var picitem02 = "num2";
bool selectOne = true;
Color cardColor = Colors.white;
Color popInsColor = Colors.white;
void reset() {
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
  ["3", "3", "3", "3", "5", "3", "3", "3", "3", "Isolate", "Ok", "5"],
  ["5", "5", "5", "5", "3", "N/A", "3", "5", "3", "3", "5", "N/A"],
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
int indexOne(String nam) {
  int i;
  for (i = 0; i < hazardName_en.length; i++) {
    if (nam == hazardName_en[i]) {
      break;
    } else {
      continue;
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
  color: Colors.black,
  fontFamily: 'Pacifico',
  letterSpacing: 2,
  //color: Color(0x9C0D1D24),
  fontSize: 25,
  //fontWeight: FontWeight.w600,
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
