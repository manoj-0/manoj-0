class OnBoarding {
  String image;
  String title;
  String description;

  OnBoarding({this.image, this.description, this.title});
}

class OnBoardingList {
  List<OnBoarding> _list;

  List<OnBoarding> get list => _list;

  OnBoardingList() {
    _list = [
      new OnBoarding(
          image: 'assets/images/1.png',
          description: 'Get handpicked courses and lots of others things',
          title: 'Search Courses'),
      new OnBoarding(
          image: 'assets/images/2.png',
          description: 'Subscribe and get unlimited study materials',
          title: 'Subscribe to unlimited'),
      new OnBoarding(
          image: 'assets/images/3.png',
          description: 'Participate in quiz and evaluate your skill',
          title: 'Test your skills'),
    ];
  }
}
