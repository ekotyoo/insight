part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String pictureURL;

  User(this.id, this.name, this.email, this.pictureURL);

  @override
  List<Object> get props => [id, name, email, pictureURL];
}

User userDummy = User(1, 'Anselma Putri', 'ansell@mail.com',
    'https://correcto.id/content/images/th1_2020112103125621590.jpg');
