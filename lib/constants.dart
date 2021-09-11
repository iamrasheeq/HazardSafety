import 'package:flutter/material.dart';

double ch_hi_li = 110;
//double ch_wi_li = 85;

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
  ["5", "5", "5", "5", "3", "OK", "3", "5", "3", "Isolate", "3", "N/A"],
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
