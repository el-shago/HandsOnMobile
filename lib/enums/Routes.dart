enum Routes {
  registerPage(route: '/register_page'),
  loginPage(route: '/login_page');

  const Routes({required this.route});

  final String route;
}
