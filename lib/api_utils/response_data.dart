
import 'package:json_annotation/json_annotation.dart';

import '../detailed_weather_data_model.dart';
part 'response_data.g.dart';

@JsonSerializable()
class ResponseData extends DetailedWeatherDataModel{
  int cod;
  dynamic meta;
  // List<dynamic> data;
  ResponseData({this.cod, this.meta, this.data});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}