import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/caffair/PaginationMeta.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'CaffairModel.g.dart';

@JsonSerializable()
class CaffairModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'ca_url')
  String caUrl;
  @JsonKey(name: 'cat_id')
  String catId;
  @JsonKey(name: 'published_date')
  String publishedDate;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'current_page')
  int currentPage;
  @JsonKey(name: 'data')
  List<CaffairModel> data;
  @JsonKey(name: 'first_page_url')
  String firstPageUrl;
  @JsonKey(name: 'from')
  int from;
  @JsonKey(name: 'last_page')
  int lastPage;
  @JsonKey(name: 'last_page_url')
  String lastPageUrl;
  @JsonKey(name: 'links')
  List<PaginationMeta> links;
  @JsonKey(name: 'next_page_url')
  String nextPageUrl;
  @JsonKey(name: 'path')
  String path;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'prev_page_url')
  String prevPageUrl;
  @JsonKey(name: 'to')
  int to;
  @JsonKey(name: 'total')
  int total;

  CaffairModel();
  factory CaffairModel.fromJson(Map<String, dynamic> json) =>
      _$CaffairModelFromJson(json);
  Map<String, dynamic> toJson() => _$CaffairModelToJson(this);
}
