part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greyColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        (context.read<UserCubit>().state as UserLoaded)
                            .user
                            .pictureURL),
                  ),
                ),
              ),
              Text(
                (context.read<UserCubit>().state as UserLoaded).user.name,
                style: blackFontStyle1,
              ),
              Text(
                (context.read<UserCubit>().state as UserLoaded).user.email,
                style: greyFontStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
