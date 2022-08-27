import 'package:bloc/bloc.dart';

import 'package:first_project/shareed/components/constants.dart';
import 'package:first_project/shareed/cubit/states.dart';
import 'package:first_project/shareed/network/local/cache_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/todo_app/archived_taskes/archived_tasks_screen.dart';
import '../../modules/todo_app/done_taskes/done_tasks_screen.dart';
import '../../modules/todo_app/new_tasks/new_tasks_screen.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() :super(AppInitialState());


  static AppCubit get(context)=> BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens =
  [
    NewTsksScreen(),
    DoneTsksScreen(),
    ArchivedTsksScreen(),
  ];
  List<String> title =
  [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',


  ];

  void changeIndex(int index)
  {
    currentIndex=index;
    emit(AppChangeBottomNavBarState());
  }

  Database? database;
  List<Map> tasks =[];

  void createDatabase()
  {
    openDatabase(
      'Todo.db',
      version: 1,
      onCreate: (database, version)
      {
        print('database created');
        database.execute
          ('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT,time TEXT, date TEXT,status TEXT)')
            .then((value)
        {
          print('table created');
        }).catchError((error)
        {
          print('error when creating table ${error.toString()}');
        });

      },
      onOpen: (database)
      {



        print('database opened');

      },
    ).then((value)
    {
      database = value;

      emit(AppCreateDatabaseState());
    });

  }
 insertDatabase(
     {
    required String title,
    required String time,
    required String date,
  }
  )async
  {
    await database!.transaction((txn)
    {
      return
        txn.rawInsert(
            'INSERT INTO tasks (title,date,time,status)VALUE("$title","$date","$time","new")'
        ).then((value)
        {
          print('$value inserted successfully');
          emit(AppInsertDatabaseState());
          getDataFromDatabase(database).then((value)
          {
            tasks =value;
            print(tasks);


            emit(AppGetDatabaseState());
          });



        }).catchError((error){
          print('error when inserting new record ${error.toString()}');
        });

    });


  }


  Future<List<Map>> getDataFromDatabase(database) async
  {

    return await database!.rawQuery('SELECT*FROM tasks');

  }

  bool isBottomSheetShown=false;
  IconData fabIcon = Icons.edit;

  void changeBottomSheetState(
  {
  required bool isShow,
  required IconData Icon,


  })
  {
    isBottomSheetShown = isShow;
    fabIcon = Icon;
    emit(AppChangeBottomSheetState());

  }


  bool isDark =false;

  void changeAppMode()
  {
    isDark =!isDark;

    CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value)
    {
      emit(AppChangeModeState());

    });
  }

}

