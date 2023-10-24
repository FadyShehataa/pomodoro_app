import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/pomodoro_times.dart';

import '../../../../../Core/widgets/custom_text_form_field.dart';
import '../../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'auto_start_widget.dart';
import 'create_pomodoro_colors.dart';
import 'create_pomodoro_footer.dart';

class CreatePomodoroViewBody extends StatelessWidget {
  const CreatePomodoroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController pomodoroNameController =
        TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BlocBuilder<CreatePomodoroCubit, CreatePomodoroState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: CustomTextFormField(
                    controller: pomodoroNameController,
                  ),
                ),
                const SizedBox(height: 20),
                const PomodoroTimes(),
                const AutoStartWidget(title: 'Auto start breaks'),
                const AutoStartWidget(title: 'Auto start Pomodoro'),
                const CreatePomodoroColors(),
                CreatePomodoroFooter(
                  formKey: formKey,
                  controller: pomodoroNameController,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
