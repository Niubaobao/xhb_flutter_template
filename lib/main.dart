import 'package:flutter/material.dart';
import 'package:xhb_http/facade/UserFacade.dart';
import 'package:xhb_http/http_param_config.dart';
import 'package:xhb_template/router/index.dart';
import 'package:xhb_template/ui/pages/comment.dart';
import 'package:xhb_widget/xhb_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  httpParamConfig.setDefaultParam(
    Environment.Pre,
    needPrintLog: true,
  );
  // 18574840030  家长账号
  // 18574843969  pre 老师 DENGdaxin12
  UserFacade.getInstance().loginWithPassword('18574843969', 'DENGdaxin12').then(
    (response) {
      httpParamConfig.setLoginInfo(response.data);
      return runApp(
        MaterialApp(
          theme: AppThemes.light,
          routes: routes,
          home: Comment(),
        ),
      );
    },
  );
}
