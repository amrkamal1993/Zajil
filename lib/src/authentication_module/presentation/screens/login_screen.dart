import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zajil/compontants/dialogs/error_dialog.dart';
import 'package:zajil/constants/colors.dart';
import 'package:zajil/core/di/injection.dart';
import 'package:zajil/core/route/app_router.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_cubit.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_state.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/login_button_widget.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/password_text_field_widget.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/username_text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginUserCubit>(),
      child: BlocConsumer<LoginUserCubit, LoginUserState>(
        builder: (context, state) {
          final cubit = context.read<LoginUserCubit>();
          return Scaffold(
            backgroundColor: AppColors.primary,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/Logojpeg.jpeg',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 20),
                    UsernameTextField(
                      onChanged: (data) {
                        cubit.setUserName(data);
                      },
                    ),
                    const SizedBox(height: 25),
                    PasswordTextField(
                      onChanged: (data) {
                        cubit.setPassword(data);
                      },
                    ),
                    const SizedBox(height: 25),
                    const LoginButtonWidget(),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          state.whenOrNull(
              onLoginSuccess: () {
                context.navigateToHome();
              },
              error: (error) =>
                  {showErrorDialog(context, 'Error', error.message)});
        },
      ),
    );
  }
}
