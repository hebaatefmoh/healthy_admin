
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {


  bool obsecuretext=true;
  Icon icon=const Icon(Icons.remove_red_eye);
  LoginBloc() : super(const LoginState()) {
    on<EmailLoginEvent>(_emailEvent);


    on<passwordLoginEvent>(_passwordEvent);

  }

  void _emailEvent(EmailLoginEvent event,Emitter<LoginState> emit){
    emit(state.copyWith(email: event.email));

  }
  void _passwordEvent(passwordLoginEvent event,Emitter<LoginState> emit){
    emit(state.copyWith(password: event.password));

  }

  void changeObsecureTextevent(){

    Icon icondata=const Icon(Icons.remove_red_eye_outlined);
    obsecuretext=!obsecuretext;
    icon = icondata ;
    emit(changesuffixiconstate( ));

  }
}

