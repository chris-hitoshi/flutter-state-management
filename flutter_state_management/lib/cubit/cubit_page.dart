import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/cubit/cubit_presenter.dart';
import 'package:flutter_state_management/cubit/cubit_state.dart';

class CubitPage extends StatefulWidget {
  const CubitPage({required this.title, super.key});

  final String title;

  @override
  State<CubitPage> createState() => _CubitPageState();
}

class _CubitPageState extends State<CubitPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitPresenter>(
      create: (context) => CubitPresenter(),
      child: Builder(builder: (context) {
        final presenter = context.read<CubitPresenter>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Esta é a maneira nativa que o Bloc/Cubit gerencia seus estados',
                ),
                BlocBuilder<CubitPresenter, CubitState>(
                    builder: (context, state) {
                  return Text(
                    state.information,
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
                Row(
                  children: <ElevatedButton>[
                    ElevatedButton(
                      onPressed: () => presenter.showAdvantages,
                      child: const Text('Vantagens'),
                    ),
                    ElevatedButton(
                      onPressed: () => presenter.showDisadvantages,
                      child: const Text('Desvantagens'),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
