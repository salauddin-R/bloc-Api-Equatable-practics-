import 'package:equatable/equatable.dart';
import '../../Data/UserModels.dart';

abstract class BlocState extends Equatable{
  const BlocState();
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}
class InitialState extends BlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class loadingState extends BlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class ErrorState extends BlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class UpdateDataLoaded extends BlocState{
  List<UserModel>  userData;
  UpdateDataLoaded({required this.userData});
  @override
  // TODO: implement props
  List<Object?> get props =>[userData];
}