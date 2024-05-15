enum Routes {
  registerPage(route: '/register_page'),
  usersettingsPage(route: '/usersettings_page'),
  completedcoursePage(route: '/completedcourse_page'),
  loginPage(route: '/login_page'),
  leccionesPage(route: '/lecciones_page'),
  homePage(route: '/home_page');

  const Routes({required this.route});

  final String route;
}
