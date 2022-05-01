class AppData {
  AppData._();

  static final MainScreenData _mainScreen = MainScreenData._();
  static final SecondScreenData _secondScreen = SecondScreenData._();

  static MainScreenData get getMainScreenData => _mainScreen;
  static SecondScreenData get getSecondScreenData => _secondScreen;
}

class MainScreenData {
  MainScreenData._();

  final List<ModelShortcut> _models = [
    ModelShortcut(
        image: "assets/images/ui_task_1_1.png",
        name: "Niketa William",
        city: "Paris"),
    ModelShortcut(
        image: "assets/images/ui_task_1_2.png",
        name: "Trisha Louls",
        city: "London"),
    ModelShortcut(image: "assets/images/ui_task_1_3.png")
  ];

  List<ModelShortcut> get getModels => _models;
}

class SecondScreenData {
  SecondScreenData._();

  final Model _model = Model(
      image: "assets/images/ui_task_1_4.jpg",
      name: "Milla Jovovich",
      city: "Baku",
      description:
          "Milla Jovovich is an Italian Model with impressive portfolio. And was the best model and ramp walk in 2018. She is famous because of her different colorful styles.",
      likedCount: 579,
      commentsCount: 3,
      watchedCount: 18);

  Model get getModel => _model;
}

class ModelShortcut {
  late String _image;
  String? _name;
  String? _city;

  ModelShortcut({required image, name, city}) {
    _image = image;
    _name = name;
    _city = city;
  }

  String get getImage => _image;
  String? get getName => _name;
  String? get getCity => _city;
}

class Model extends ModelShortcut {
  String? _description;
  int? _likesCount;
  int? _commentsCount;
  int? _watchedCount;

  Model(
      {required image,
      required name,
      required city,
      required description,
      required likedCount,
      required commentsCount,
      required watchedCount})
      : super(image: image, name: name, city: city) {
    _description = description;
    _likesCount = likedCount;
    _commentsCount = commentsCount;
    _watchedCount = watchedCount;
  }

  String? get getDescription => _description;
  int? get getLikesCount => _likesCount;
  int? get getCommentsCount => _commentsCount;
  int? get getWatchedCount => _watchedCount;
}
