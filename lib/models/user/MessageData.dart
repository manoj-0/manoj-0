import 'package:json_annotation/json_annotation.dart';
part 'MessageData.g.dart';

@JsonSerializable()
class MessageData {
  @JsonKey(name: 'Number')
  String number;
  @JsonKey(name: 'MessageId')
  String messageId;
  MessageData();
  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDataToJson(this);
}
