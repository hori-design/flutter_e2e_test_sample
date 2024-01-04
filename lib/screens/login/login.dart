import 'package:flutter/material.dart';
import 'package:flutter_e2e_test_sample/__generated/schema/type/authentication.graphql.dart';
import 'package:flutter_e2e_test_sample/__generated/screens/login/login.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final idTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();

    final errorText = useState<String?>(null);

    final mutation = useMutation$LoginMutation(
      WidgetOptions$Mutation$LoginMutation(
        onCompleted: (_, data) {
          if (data?.login == null) {
            return;
          }
          context.pushNamed('home');
        },
        onError: (error) {
          errorText.value = error?.graphqlErrors.first.message;
        },
      ),
    );

    void onSubmit() {
      mutation.runMutation(
        Variables$Mutation$LoginMutation(
          input: Input$LoginInput(
            id: idTextController.text,
            password: passwordTextController.text,
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                key: const Key('idTextFormField'),
                controller: idTextController,
                decoration: const InputDecoration(
                  labelText: 'ID',
                ),
              ),
              const Gap(10),
              TextFormField(
                key: const Key('passwordTextFormField'),
                controller: passwordTextController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'パスワード',
                ),
              ),
              if (errorText.value != null) ...[
                const Gap(20),
                Text(
                  errorText.value!,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
              const Gap(40),
              ElevatedButton(
                key: const Key('loginButton'),
                onPressed: onSubmit,
                child: const Text('ログインする'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
