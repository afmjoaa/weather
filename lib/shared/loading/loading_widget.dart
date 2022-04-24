import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/shared/flr_loading_widget.dart';
import 'package:weather/shared/loading/loading_cubit.dart';
import 'package:weather/shared/loading/loading_state.dart';
import 'package:weather/shared/overlay_widget.dart';
import 'package:weather/shared/message_widget.dart';
import 'package:weather/utility/log.dart';

class LoadingWidget extends StatefulWidget {
  final LoadingCubit loadingCubit;
  final Widget child;

  const LoadingWidget(
      {Key? key, required this.loadingCubit, required this.child})
      : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, LoadingState>(
      bloc: widget.loadingCubit,
      builder: (context, state) {
        Log.info("loading state is: $state");
        var onOverlayCallback = (state is LoadingFailedState) ? (){}: null;
        return Scaffold(
          body: Stack(
            children: <Widget>[
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: widget.child,
                visible: true,
              ),
              Visibility(
                child: const OverlayWidget(),
                visible: state is LoadingStartedState ? true : false
                //state is InitialLoadingState || state is LoadingCompletedState ? false : true,
              ),
              Visibility(
                child: const FlrLoadingWidget(),
                visible: state is LoadingStartedState ? true : false,
              ),
              Visibility(
                child: MessageWidget(
                  loadingCubit: widget.loadingCubit,
                ),
                visible: state is LoadingFailedState,
              )
            ],
          ),
        );
      },
    );
  }
}
