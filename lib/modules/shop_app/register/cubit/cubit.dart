import 'package:bloc/bloc.dart';
import 'package:first_project/models/shop_app/login_model.dart';
import 'package:first_project/modules/shop_app/login/cubit/states.dart';
import 'package:first_project/modules/shop_app/register/cubit/states.dart';
import 'package:first_project/shareed/network/end_point.dart';
import 'package:first_project/shareed/network/remote/dio_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class ShopRegisterCubit extends Cubit<ShopRegisterStates>
{


  ShopRegisterCubit() : super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context)=> BlocProvider.of(context);


  ShopLoginModel? loginModel;


  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,

  })
  {
    emit(ShopRegisterLoadingState());
    DioHelper.postData(
        url: REGISTER,
        data:
        {
          'name':name,
          'email':email,
         'password':password,
          'phone':phone,
        },
    ).then((value)
    {
      print(value.data);
      loginModel=  ShopLoginModel.fromJson(value.data);


      emit(ShopRegisterSuccessState(loginModel!));
    }).catchError((error)
    {
      print(error.toString());
      emit(ShopRegisterErrorState(error.toString()));
    });
  }


  // IconData suffix = Icons.visibility_outlined;
  // bool isPassword = true;
  //
  // void changePasswordVisibility()
  // {
  //   isPassword = !isPassword;
  //   suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;
  //
  //   emit(ShopChangePasswordVisibilityState());
  // }
}