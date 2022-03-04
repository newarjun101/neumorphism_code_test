class ApiResponseModel {

  int statusCode;
  String message;
  dynamic data;
  bool isError;

  ApiResponseModel({required this.statusCode,required  this.message,required this.data,required this.isError});
}