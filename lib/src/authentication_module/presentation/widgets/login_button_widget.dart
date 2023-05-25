import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zajil/compontants/widgets/app_button.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_cubit.dart';
import 'package:zajil/src/authentication_module/presentation/cubit/login_state.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginUserCubit, LoginUserState>(
      builder: (builderContext, state) {
        final cubit = builderContext.read<LoginUserCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppButton(
              onClick: () => cubit.loginUser(),
              state: _checkState(state, cubit),
              text: 'تسجيل الدخول',
            ),
            const SizedBox(height: 5),
          ],
        );
      },
    );
  }

  ButtonState _checkState(LoginUserState state, LoginUserCubit cubit) {
    return cubit.isButtonEnabled
        ? state.maybeWhen(
      orElse: () => ButtonState.enabled,
      loading: () => ButtonState.loading,
    ) : ButtonState.disabled;
  }
}
