import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it_demo/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      viewModelBuilder: () => PartialBuildsViewModel(),
      builder:
          (_, model, __) => Scaffold(
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_StringForm(), _TitleAndValue()],
            ),
          ),
    );
  }
}

class _StringForm extends StackedHookView<PartialBuildsViewModel> {
  const _StringForm() : super(reactive: true);

  @override
  Widget builder(BuildContext context, PartialBuildsViewModel model) {
    final controller = useTextEditingController();
    return TextField(onChanged: model.updateString, controller: controller);
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValue() : super(reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    return Text(model.title);
  }
}
