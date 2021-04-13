import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.NameDevice,
    this.EventDate,
    this.Event,
  });

  String NameDevice;
  DateTime EventDate;
  String Event;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        NameDevice: json["nameDevice"],
        EventDate: DateTime.parse(json["eventDate"]),
        Event: json["eventDescription"],
      );

  Map<String, dynamic> toJson() => {
        "NameDevice": NameDevice,
        "EventDate": EventDate.toIso8601String(),
        "Event": Event,
      };
}
