import 'package:flutter/material.dart';

double ch_hi_li = 110;
//double ch_wi_li = 85;
const Color popTextColor = Color(0xFF000000);
const Color popCardColor = Color(0xFFFFFFFF);
Color popCard = Colors.black;
var hazardPic01 = "blank";
var hazardPic02 = "blank";
var hazardName01 = "select a chemical hazard";
var hazardName02 = "select a chemical hazard";
var dis = "";
var interpretation = "";
var picitem01 = "num1";
var picitem02 = "num2";
bool selectOne = true;


void reset() {
  Color cardColor = Colors.white;
  hazardPic01 = "blank";
  hazardPic02 = "blank";
  hazardName01 = "select a chemical hazard";
  hazardName02 = "select a chemical hazard";
  dis = "";
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
  ["OK", "OK", "3m", "3m", "5m", "5m", "5m", "5m", "3m", "Isolate", "3m", "5m"],
  ["OK", "OK", "OK", "OK", "5m", "5m", "5m", "5m", "3m", "Isolate", "3m", "5m"],
  [
    "3m",
    "OK",
    "N/A",
    "3m",
    "5m",
    "5m",
    "5m",
    "5m",
    "3m",
    "Isolate",
    "3m",
    "5m"
  ],
  ["3m", "OK", "3m", "OK", "5m", "5m", "5m", "5m", "3m", "Isolate", "3m", "5m"],
  ["5m", "5m", "5m", "5m", "OK", "3m", "5m", "5m", "5m", "Isolate", "5m", "3m"],
  [
    "5m",
    "5m",
    "5m",
    "5m",
    "3m",
    "OK",
    "3m",
    "5m",
    "3m",
    "Isolate",
    "3m",
    "N/A"
  ],
  ["5m", "5m", "5m", "5m", "5m", "3m", "OK", "5m", "5m", "Isolate", "3m", "3m"],
  ["5m", "5m", "5m", "5m", "5m", "5m", "5m", "OK", "5m", "Isolate", "3m", "5m"],
  [
    "3m",
    "3m",
    "5m",
    "5m",
    "5m",
    "Apart",
    "5m",
    "5m",
    "N/A",
    "Isolate",
    "3m",
    "3m"
  ],
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
    "3m"
  ],
  ["3m", "3m", "3m", "3m", "5m", "3m", "3m", "3m", "3m", "Isolate", "Ok", "5m"],
  ["5m", "5m", "5m", "5m", "3m", "N/A", "3m", "5m", "3m", "3m", "5m", "N/A"],
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
  color: popTextColor,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const DistanceTextStyle = TextStyle(
  color: popTextColor,
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);