part of 'faq_bloc.dart';

@immutable
abstract class FaqState extends Equatable {
  const FaqState();
}

class FaqInitializing extends FaqState {
  @override
  List<Object> get props => [];
}

class FaqLoading extends FaqState {
  @override
  List<Object> get props => [];
}

class FaqListLoaded extends FaqState {
  @override
  // TODO: implement props
  List<FaqMaster> faqMasterList;

  FaqListLoaded({@required this.faqMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [faqMasterList];
}

class FaqError extends FaqState {
  String message;
  FaqError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
