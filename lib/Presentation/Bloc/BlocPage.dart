import 'package:bloc/bloc.dart';
import '../../Core/restClient.dart';
import '../../Data/UserModels.dart';
import 'BlocEvent.dart';
import 'BlocState.dart';

class BlocPage extends Bloc<BlocEvent,BlocState> {
  List<UserModel>  userData=[];

  BlocPage() :super(InitialState()) {
    on<getUserData>((event, emit)async{
      try{
        emit(loadingState());
        List<UserModel> data=await userDataRequest();
        userData=data;
        emit(UpdateDataLoaded(userData: userData));
      }
      catch(e){
        emit(ErrorState());
      }
    });
  }
}