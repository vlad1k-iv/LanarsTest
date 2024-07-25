// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _MainPageAppServiceClient implements MainPageAppServiceClient {
  _MainPageAppServiceClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.pexels.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Photographer> getListPhotographer(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'per_page': page};
    final _headers = <String, dynamic>{
      r'Authorization':
          'Md7ffKqzamiOLHmnVGQko6PbxZwzvdVEOqot0zvavrt8XgxMPhUGa7kO'
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Photographer>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/curated',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Photographer.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
