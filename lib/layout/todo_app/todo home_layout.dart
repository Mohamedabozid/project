
import 'package:conditional_builder_rec/conditional_builder_rec.dart';

import 'package:first_project/shareed/components/compnnents.dart';
import 'package:first_project/shareed/components/constants.dart';
import 'package:first_project/shareed/cubit/cubit.dart';
import 'package:first_project/shareed/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatelessWidget
{


    var scaffoldKey= GlobalKey<ScaffoldState>();
    var formKey = GlobalKey<FormState>();

    var titleController = TextEditingController();
    var timingController = TextEditingController();
    var dateController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return BlocProvider(
          create: (BuildContext context) =>AppCubit()..createDatabase(),
          child: BlocConsumer<AppCubit,AppStates>(
          listener: (context,state){
            if(state is AppInsertDatabaseState)
            {
              Navigator.pop(context);
            }
          },
          builder: (context,state)
            {
                AppCubit Cubit =AppCubit.get(context);
                return Scaffold(
                key:scaffoldKey ,
                appBar: AppBar(
                title: Text(
                    Cubit.title[Cubit.currentIndex],
                ),
                ),
                body: ConditionalBuilderRec(
                condition: true ,
                builder: (context) =>Cubit.screens[Cubit.currentIndex],
                fallback: (context) => Center(
                    child:
                    CircularProgressIndicator()),
                ),
                floatingActionButton: FloatingActionButton(
                onPressed: ()
                {
                if(Cubit.isBottomSheetShown)
                {
                if(formKey.currentState!.validate())
                {
                  Cubit.insertDatabase(
                      title: titleController.text,
                      time: timingController.text,
                      date: dateController.text,
                  );
                  // insertDatabase(
                  //   time: timingController.text,
                  //   date: dateController.text,
                  //   title: titleController.text,
                  // ).then((value)
                  // {getDataFromDatabase(database).then((value)
                  // {
                  //   Navigator.pop(context);
                  //   // setState(() {
                  //   //
                  //   //     isBottomSheetShown=false;
                  //   //     fabIcon=Icons.edit;
                  //   //
                  //   //     tasks= value;
                  //   // });
                  // });
                  //
                  // });
                }


                }else
                {
                scaffoldKey.currentState!.showBottomSheet(
                (context) => Container(
                color: Colors.grey[100],
                padding: EdgeInsets.all(20.0),
                child: Form(
                key: formKey,
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                defaultFormField(
                controller: titleController,
                type: TextInputType.text,
                label: 'task title',
                prefix: Icons.title,
                validate: (String? value)
                {
                if(value!.isEmpty){
                return 'title must be empty';
                }
                return null;
                },
                ),
                SizedBox(
                height: 15.0,
                ),
                defaultFormField(
                controller: timingController,
                type: TextInputType.datetime,
                label: 'task time',
                prefix: Icons.watch_later_outlined,
                validate: (String? value)
                {
                if(value!.isEmpty){
                return 'time must be empty';
                }
                return null;
                },
                onTap: ()
                {
                showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                ).then((value)
                {
                timingController.text =(value!.format(context)).toString();
                print(value.format(context));
                });
                }
                ),
                SizedBox(
                height: 15.0,
                ),
                defaultFormField(
                controller: dateController,
                type: TextInputType.datetime,
                label: 'task date',

                prefix: Icons.calendar_today,
                validate: (String? value)
                {
                if(value!.isEmpty){
                return 'date must be empty';
                }
                return null;
                },
                onTap: ()
                {
                showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.parse('2022-05-27'),
                ).then((value)
                {

                dateController.text= DateFormat.yMMMd().format(value!);

                });

                }
                ),
                ],
                ),
                ),
                ), ).closed.then((value)
                {
                  Cubit.changeBottomSheetState(
                    isShow: false,
                    Icon: Icons.edit,

                  );


                });
                Cubit.changeBottomSheetState(
                  isShow: true,
                  Icon: Icons.add,
                );

                }


                },
                child: Icon(
                 Cubit.fabIcon,
                ),
                ),
            bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: Cubit.currentIndex,
            onTap: (index)
            {
                Cubit.changeIndex(index);

            },
            items:
            [
            BottomNavigationBarItem(
            icon:Icon(
            Icons.menu,
            semanticLabel: 'Taskes',
            ),
            label: 'Taskes',

            ),
            BottomNavigationBarItem(
            icon: Icon(
            Icons.check_circle_outline,

            ),
            label: 'done',
            ),
            BottomNavigationBarItem(
            icon:Icon(
            Icons.archive_outlined,

            ),
            label:  'archived',
            ),
            ],
            ),

            );
            },
          ),
        );
    }
    // Future<String> getName()async
    // {
    //     return 'ahmed ali';
    // }


}

