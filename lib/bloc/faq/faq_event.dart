part of 'faq_bloc.dart';

@immutable
abstract class FaqEvent extends Equatable {
  const FaqEvent();
}

class LoadFaqListEvent extends FaqEvent {
  final List<FaqMaster> faqMasterList;
  const LoadFaqListEvent({
    @required this.faqMasterList,
  });
  @override
  List<Object> get props => [];
}
