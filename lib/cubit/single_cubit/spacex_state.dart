import 'package:equatable/equatable.dart';
import 'package:exam_five/data/models/spacex_model.dart';

class CubitSingleState extends Equatable {
  Status? status;
  String? error;
  SpacexModel? news;

  CubitSingleState({
    this.status,
    this.error,
    this.news,
  });

  CubitSingleState copyWith({
    Status? status,
    String? error,
    SpacexModel? news,
  }) {
    return CubitSingleState(
        error: error ?? this.error,
        news: news ?? this.news,
        status: status ?? this.status);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, error, news];
}
// ignore: constant_identifier_names
enum Status { PURE, LOADING, ERROR, SUCCESS }