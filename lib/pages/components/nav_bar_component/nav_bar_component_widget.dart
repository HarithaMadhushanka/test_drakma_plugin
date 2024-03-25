import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_component_model.dart';
export 'nav_bar_component_model.dart';

class NavBarComponentWidget extends StatefulWidget {
  const NavBarComponentWidget({super.key});

  @override
  State<NavBarComponentWidget> createState() => _NavBarComponentWidgetState();
}

class _NavBarComponentWidgetState extends State<NavBarComponentWidget> {
  late NavBarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
