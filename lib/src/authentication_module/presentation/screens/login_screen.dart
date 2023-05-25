import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zajil/core/di/injection.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_cubit.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginUserCubit>(),
      child: BlocConsumer<LoginUserCubit, LoginUserState>(
        builder: (context, state) {
          return  Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    UserNameTextField(),
                    const SizedBox(height: 25),
                    PasswordTextField(),
                    LoginButtonWidget(),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          final cubit = context.read<LoginUserCubit>();
          state.whenOrNull(
              error: (error) {
                hideLoading();
              });
        },
      ),
    );
  }
}
