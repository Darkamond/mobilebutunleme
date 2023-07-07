// To parse this JSON data, do
//
//     final butRenciNo = butRenciNoFromJson(jsonString);

import 'dart:convert';

class ButRenciNo {
    String name;
    String school;
    String ogrNo;
    List<String> rights;

    ButRenciNo({
        required this.name,
        required this.school,
        required this.ogrNo,
        required this.rights,
    });

    factory ButRenciNo.fromRawJson(String str) => ButRenciNo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ButRenciNo.fromJson(Map<String, dynamic> json) => ButRenciNo(
        name: json["name"],
        school: json["school"],
        ogrNo: json["OgrNo"],
        rights: List<String>.from(json["rights"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "school": school,
        "OgrNo": ogrNo,
        "rights": List<dynamic>.from(rights.map((x) => x)),
    };
}
