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

User userDummy = User(1, 'Eko Prasetyo', 'ekoprasetyo@mail.com',
    'https://www.jobstreet.co.id/en/cms/employer/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png');
