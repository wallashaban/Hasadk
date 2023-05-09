class ApiConstant {
  static const String baseUrl = 'https://hasadk-backend.cyclic.app/';
  static const String login = '/api/v1/users/login';
  static const String register = '/api/v1/users/signup';
  static const String allProducts = '/api/v1/products';
  static const String getFavorites = '/api/v1/products/favourites';
  static const String logOut = '/api/v1/users/logout';

  static String getAllReviews(productId) =>
      '/api/v1/reviews?product=$productId';

  static String productDetails(productId) => '/api/v1/products/$productId';

  static String addProductToFavorite(productId) =>
      '/api/v1/products/$productId/love';

  static String removeProductToFavorite(productId) =>
      '/api/v1/products/$productId/unlove';

  static String searchProduct(text) => '/api/v1/products/search/$text';

  static String reviewDetails(reviewId) => '/api/v1/reviews/$reviewId';
  static const String getMyProfile = '/api/v1/users/me';
  static const String loginWithPhone = '/api/v1/users/loginPhone';
  static const String updatePassword = '/api/v1/users/updateMyPassword';

  static String resetPassword(code) => '/api/v1/users/resetPassword/$code';
  static const String forgetPassword = '/api/v1/users/forgotPassword';
  static const String getAllCategories = '/api/v1/categories/';

  static String categoryDetails(categoryId) =>
      '/api/v1/products?categoryId=$categoryId';
  static const String addReview = '/api/v1/reviews';

  static String updateReview(reviewId) => '/api/v1/categories/$reviewId';
  static const String deleteAccount = '/api/v1/users/deleteMe';
  static const String getAllSellers = '/api/v1/users?role=seller';
  static String getSellerInformation(sellerId) => '/api/v1/users/$sellerId';
}
