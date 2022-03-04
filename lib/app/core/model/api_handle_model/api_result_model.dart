class ApiResultModel<T> {
  int statusCode;
  String message;
  List<T> data;
  bool isError;

  ApiResultModel(
      {required this.statusCode,
        required this.message,
        required this.data,
        required this.isError});
}