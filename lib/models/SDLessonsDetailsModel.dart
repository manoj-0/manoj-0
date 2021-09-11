class SDLessonsDetailsModel {
  String chapterName;
  String chapterDetails;

  SDLessonsDetailsModel({
    this.chapterName,
    this.chapterDetails,
  });
}

List<SDLessonsDetailsModel> chapters = [
  SDLessonsDetailsModel(
    chapterName: 'Introduction',
    chapterDetails: 'Introduction to geography',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Maps type & Usages',
    chapterDetails: 'Learn about maps type & how to use each...',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Population & Country',
    chapterDetails: 'Learn the worldwide population & country...',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Climate ',
    chapterDetails: 'Learn about climate...',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Earth-forming Process ',
    chapterDetails: 'Learn how the earth-forming process be...',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Rocks',
    chapterDetails: 'Learn the type of the rocks,and their spec...',
  ),
  SDLessonsDetailsModel(
    chapterName: 'Earthquake',
    chapterDetails: 'Learn about seismology...',
  ),
];
