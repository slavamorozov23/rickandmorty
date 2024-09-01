// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:rick_and_morty_api_another_nothingburger/presentation/pages/characters_list_page.dart'
    as _i1;

/// generated route for
/// [_i1.CharactersListPage]
class CharactersListRoute extends _i2.PageRouteInfo<void> {
  const CharactersListRoute({List<_i2.PageRouteInfo>? children})
      : super(
          CharactersListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersListRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      return _i1.CharactersListPage();
    },
  );
}
