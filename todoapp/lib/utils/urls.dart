class Urls {
  static String baseurl = 'http://35.73.30.144:2008/api/v1';
  static String createProduct = '$baseurl/CreateProduct';
  static String readProduct = '$baseurl/ReadProduct';
  static String updateProduct (String id) => '$baseurl/UpdateProduct/${id}';
  static String deleteProduct (String id) => '$baseurl/DeleteProduct/${id}';
}