import 'package:first_project/layout/social_app/cubit/cubit.dart';
import 'package:first_project/layout/social_app/cubit/states.dart';
import 'package:first_project/modules/social_app/new_post/new_post_screen.dart';
import 'package:first_project/shareed/components/compnnents.dart';
import 'package:first_project/shareed/styles/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SocialLayout extends StatelessWidget {
  const SocialLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state)
      {
        if(state is SocialNewPostState)
        {
          navigateTo(context, NewPostScreen(),);
        }
      },
      builder: (context, state) {
        var Cubit = SocialCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  IconBroken.Notification,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  IconBroken.Search,
                ),
              ),

            ],
            title: Text(
              Cubit.tittle[Cubit.currentIndex],
            ),
          ),
          body: Cubit.screens[Cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Cubit.currentIndex,
            onTap: (index) {
              Cubit.changeBottomNav(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Chat,
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Paper_Upload,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Location,
                ),
                label: 'Users',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Setting,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
