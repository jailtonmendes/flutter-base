import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:reference_code/pages/botoes_rotacao_texto_page.dart';
import 'package:reference_code/pages/container/container_page.dart';
import 'package:reference_code/pages/dialog_awesome/dialog_awesome_page.dart';
import 'package:reference_code/pages/dialogs/dialogs_page.dart';
import 'package:reference_code/pages/home/home_page.dart';
import 'package:reference_code/pages/layout_builder/layout_builder_page.dart';
import 'package:reference_code/pages/media_query/media_query_page.dart';
import 'package:reference_code/pages/rows_columns/rows_column_page.dart';
import 'package:reference_code/pages/scrolls/listview_page.dart';
import 'package:reference_code/pages/scrolls/singlechildscrollview_page.dart';
import 'package:reference_code/pages/slide_action/slide_action_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      // !kReleaseMode, //Verificando se App está em produção = KReleaseMode
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CodReference',
      theme: ThemeData(primarySwatch: Colors.blue),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/slide_action': (_) => const SlideActionPage(),
        '/scrolls/single_child': (_) => const SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/dialog-awesome': (_) => const DialogAwesomePage()
      },
    );
  }
}
