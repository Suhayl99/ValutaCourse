// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<CurrencyModel> welcomeFromJson(String str) => List<CurrencyModel>.from(json.decode(str).map((x) => CurrencyModel.fromJson(x)));

String welcomeToJson(List<CurrencyModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CurrencyModel {
    
    CurrencyModel({
        this.id,
        this.code,
        this.ccy,
        this.ccyNmRu,
        this.ccyNmUz,
        this.ccyNmUzc,
        this.ccyNmEn,
        this.nominal,
        this.rate,
        this.diff,
        this.date,
    });

    int? id;
    String? code;
    String? ccy;
    String? ccyNmRu;
    String? ccyNmUz;
    String? ccyNmUzc;
    String? ccyNmEn;
    String? nominal;
    String? rate;
    String? diff;
    Date? date;

    factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        id: json["id"],
        code: json["Code"],
        ccy: json["Ccy"],
        ccyNmRu: json["CcyNm_RU"],
        ccyNmUz: json["CcyNm_UZ"],
        ccyNmUzc: json["CcyNm_UZC"],
        ccyNmEn: json["CcyNm_EN"],
        nominal: json["Nominal"],
        rate: json["Rate"],
        diff: json["Diff"],
        date: dateValues.map[json["Date"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Code": code,
        "Ccy": ccy,
        "CcyNm_RU": ccyNmRu,
        "CcyNm_UZ": ccyNmUz,
        "CcyNm_UZC": ccyNmUzc,
        "CcyNm_EN": ccyNmEn,
        "Nominal": nominal,
        "Rate": rate,
        "Diff": diff,
        "Date": dateValues.reverse?[date],
    };


@override
toString(){
  return "$id $ccy $ccyNmRu/$ccyNmUz/$ccyNmEn $nominal $ccy --- $rate  so'm";
}

toStringUzbek(){
  return "$id ->  $ccy  [$ccyNmUz]  --- $rate  so'm  {$diff }";
}
toStringUzbekirill(){
  return "$id ->  $ccy  [$ccyNmUzc] --- $rate so'm  {$diff }";
}

toStringRus(){
  return "$id ->  $ccy  [$ccyNmRu]  --- $rate  so'm  {$diff }";
}
toStringEnglish(){
  return "$id ->  $ccy  [$ccyNmEn]  --- $rate  so'm  {$diff }";
}

}


enum Date { THE_24052022 }

final dateValues = EnumValues({
    "24.05.2022": Date.THE_24052022
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
